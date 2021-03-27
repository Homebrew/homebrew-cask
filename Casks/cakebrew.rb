cask "cakebrew" do
  version "1.3"
  sha256 "a83fc72bd0b4dd62b716adfdfccb0fce3a589b3cba16bea7e2d55d829918e300"

  url "https://cakebrew-377a.kxcdn.com/cakebrew-#{version}.zip",
      verified: "cakebrew-377a.kxcdn.com/"
  appcast "https://www.cakebrew.com/appcast/profileInfo.php"
  name "Cakebrew"
  desc "GUI app for Homebrew"
  homepage "https://www.cakebrew.com/"

  auto_updates true

  app "Cakebrew.app"

  zap trash: [
    "~/Library/Caches/com.brunophilipe.Cakebrew",
    "~/Library/Preferences/com.brunophilipe.Cakebrew.plist",
    "~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState",
  ]
end
