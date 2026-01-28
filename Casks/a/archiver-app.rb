cask "archiver-app" do
  version "5.0.3"
  sha256 "ae2af486d3e14edf234e578c64bed8ae776467d9316f5d9b4abdb012ede4aa9a"

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
