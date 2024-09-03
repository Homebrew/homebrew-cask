cask "dbngin" do
  version "7.2,72"
  sha256 "75f3ba589ac843965632f9579da06459666f43d6d1b3575924800826dd8b9ef0"

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
