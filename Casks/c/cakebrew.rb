cask "cakebrew" do
  version "1.3"
  sha256 "a83fc72bd0b4dd62b716adfdfccb0fce3a589b3cba16bea7e2d55d829918e300"

  url "https://github.com/brunophilipe/Cakebrew/releases/download/v#{version}/cakebrew-#{version}-universal.zip"
  name "Cakebrew"
  desc "GUI app for Homebrew"
  homepage "https://github.com/brunophilipe/Cakebrew"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Cakebrew.app"

  zap trash: [
    "~/Library/Caches/com.brunophilipe.Cakebrew",
    "~/Library/Preferences/com.brunophilipe.Cakebrew.plist",
    "~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState",
  ]
end
