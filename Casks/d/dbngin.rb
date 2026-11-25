cask "dbngin" do
  version "27.2.0,105"
  sha256 "bb23ff84a241578a99cfed54dbb7e6807cf364fc849287daa7727574eaeb9f63"

  url "https://files.dbngin.com/macos/#{version.csv.second}/DBngin.dmg"
  name "DBngin"
  desc "Database version management tool"
  homepage "https://dbngin.com/"

  livecheck do
    url "https://dbngin.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/HTTPStorages/com.tinyapp.DBngin",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
    "~/Library/Preferences/com.tinyapp.DBnginMenuHelper.plist",
  ]
end
