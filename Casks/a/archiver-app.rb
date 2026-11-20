cask "archiver-app" do
  version "5.1.0"
  sha256 "5a9041a98d3f44f34a8d20d3051b2a98f3456696c9c1078bcd3c57e50eea2847"

  url "https://github.com/incbee/archiver-#{version.major}-releases/releases/download/v#{version}/Archiver-#{version}-universal-mac.zip"
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
