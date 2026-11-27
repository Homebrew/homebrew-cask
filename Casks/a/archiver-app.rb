cask "archiver-app" do
  version "5.2.0"
  sha256 "c57a860b27578098b110bcfd20eaf7169ecee73ab800d193c072d5f3ffbb6166"

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
