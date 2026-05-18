cask "dbngin" do
  version "8.0,80"
  sha256 "87e6a45354e43362129924372513e173cc6642929cd0ac4b236916a8a73099c8"

  url "https://files.dbngin.com/macos/#{version.csv.second}/DBngin.dmg"
  name "DBngin"
  desc "Database version management tool"
  homepage "https://dbngin.com/"

  livecheck do
    url "https://dbngin.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
  ]
end
