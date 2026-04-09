cask "orchard" do
  version "1.11.1"
  sha256 "1412b56d3cd1c11aa9d8170b072171c441741e68091fcec4a602df11e9bc273a"

  url "https://github.com/andrew-waters/orchard/releases/download/v#{version}/Orchard-#{version}.dmg"
  name "Orchard"
  desc "Native GUI for Apple Containers"
  homepage "https://github.com/andrew-waters/orchard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "container"
  depends_on macos: ">= :tahoe"

  app "Orchard.app"

  postflight do
    system_command "defaults",
                   args: ["write", "container-compose.Orchard", "OrchardCustomBinaryPath", "#{HOMEBREW_PREFIX}/bin/container"]
  end

  zap trash: [
    "~/Library/Caches/container-compose.Orchard",
    "~/Library/Preferences/container-compose.Orchard.plist",
  ]
end
