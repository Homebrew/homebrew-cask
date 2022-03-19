cask "menuwhere" do
  version "2.2,30"
  sha256 :no_check

  url "https://manytricks.com/download/menuwhere"
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
