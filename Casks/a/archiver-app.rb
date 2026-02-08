cask "archiver-app" do
  version "5.0.6"
  sha256 "8165dd8591c49cc571f828f1ebf9f8aa4a40d49dbb071062e285915da5569c9a"

  url "https://github.com/incbee/archiver-#{version.major}-releases/releases/download/v#{version}/Archiver-#{version}-universal-mac.zip",
      verified: "github.com/incbee/archiver-#{version.major}-releases/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
