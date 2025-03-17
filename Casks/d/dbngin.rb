cask "dbngin" do
  version "7.6,76"
  sha256 "e00d1c4e289e88217bf88e94c5d9b0dfce4993f5118d9112348660d29cc5fd47"

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
