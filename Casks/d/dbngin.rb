cask "dbngin" do
  version "7.8,78"
  sha256 "1eee860e475e01db16afc23b5b51655572dcb88aaa877c205bfa399f647fdcec"

  url "https://files.dbngin.com/macos/#{version.csv.second}/DBngin.dmg"
  name "DBngin"
  desc "Database version management tool"
  homepage "https://dbngin.com/"

  livecheck do
    url "https://dbngin.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DBngin.app"

  zap trash: [
    "~/Library/Application Support/com.tinyapp.DBngin",
    "~/Library/Caches/com.tinyapp.DBngin",
    "~/Library/Cookies/com.tinyapp.DBngin.binarycookies",
    "~/Library/Preferences/com.tinyapp.DBngin.plist",
  ]
end
