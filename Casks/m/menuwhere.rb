cask "menuwhere" do
  version "2.2.2"
  sha256 "eccd3a9e986d1e5ee20717ad00387ff669ad21abfc8a7d2b50e99e0f5f8ca978"

  url "https://manytricks.com/download/_do_not_hotlink_/menuwhere#{version.no_dots}.dmg"
  name "Menuwhere"
  desc "Access the menu from anywhere"
  homepage "https://manytricks.com/menuwhere/"

  livecheck do
    url "https://manytricks.com/menuwhere/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Menuwhere.app"

  uninstall quit: "com.manytricks.Menuwhere"

  zap trash: [
    "~/Library/Caches/com.manytricks.Menuwhere",
    "~/Library/HTTPStorages/com.manytricks.Menuwhere",
    "~/Library/Preferences/com.manytricks.Menuwhere.plist",
  ]
end
