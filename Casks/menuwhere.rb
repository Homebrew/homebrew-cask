cask "menuwhere" do
  version "2.1.1,22"
  sha256 "2068b91b41bae33c40168c6092522a028e2e42d6a415844d0c404aa51b81d9b4"

  url "https://manytricks.com/download/_do_not_hotlink_/menuwhere#{version.before_comma.no_dots}.dmg"
  name "Menuwhere"
  desc "Access the menu from anywhere"
  homepage "https://manytricks.com/menuwhere/"

  livecheck do
    url "https://manytricks.com/menuwhere/appcast/"
    strategy :sparkle
  end

  app "Menuwhere.app"

  uninstall quit: "com.manytricks.Menuwhere"

  zap trash: [
    "~/Library/Caches/com.manytricks.Menuwhere",
    "~/Library/Preferences/com.manytricks.Menuwhere.plist",
  ]
end
