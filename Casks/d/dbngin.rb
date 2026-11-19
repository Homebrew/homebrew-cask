cask "dbngin" do
  version "27.1.1,104"
  sha256 "f02d766ebc4f5e0fbd3b46c07a6c5a2f520cb31a6373283a7f963056eb1c84ea"

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
