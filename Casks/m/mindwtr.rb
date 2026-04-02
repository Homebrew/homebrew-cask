cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.9"
  sha256 arm:   "868d1f780ea9f845915d1d59aab26f960a4fee631525f114b9a05fc41c6e3284",
         intel: "0a5188b9c28adb3a14a332d1b1cdc5a3a35359331803e6c03564adb247c42413"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
