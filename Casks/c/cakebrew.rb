cask "cakebrew" do
  version "1.3"
  sha256 "a83fc72bd0b4dd62b716adfdfccb0fce3a589b3cba16bea7e2d55d829918e300"

  url "https://cakebrew-377a.kxcdn.com/cakebrew-#{version}.zip",
      verified: "cakebrew-377a.kxcdn.com/"
  name "Cakebrew"
  desc "Graphical interface to manage the Homebrew package manager"
  homepage "https://www.cakebrew.com/"

  livecheck do
    url "https://www.cakebrew.com/appcast/profileInfo.php"
    regex(/cakebrew-(\d+(?:\.\d+)+)\.zip/i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "Cakebrew.app"

  zap trash: [
    "~/Library/Caches/com.brunophilipe.Cakebrew",
    "~/Library/HTTPStorages/com.brunophilipe.Cakebrew",
    "~/Library/Preferences/com.brunophilipe.Cakebrew.plist",
    "~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState",
  ]
end
