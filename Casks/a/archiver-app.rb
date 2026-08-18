cask "archiver-app" do
  version "5.0.11"
  sha256 "8cf64162fb96598182c08a63142cf842ac9745e2a6c511f9b7cd0ec1ab673be1"

  url "https://github.com/incbee/archiver-#{version.major}-releases/releases/download/v#{version}/Archiver-#{version}-universal-mac.zip",
      verified: "github.com/incbee/archiver-#{version.major}-releases/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Archiver.app"

  uninstall quit: "com.incrediblebee.Archiver"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
