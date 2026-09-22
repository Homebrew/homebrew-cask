cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "fb9acf73552585b8cd938e793d075b01a750c6782bcb07ab72c548db8beef221",
         intel: "91a7da6e426704892a84cb03ac8f14791a0cd9523767e9d5ba85f824ebf0a688"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Scripts/5X9JC5PL7T.tech.dongdongbh.mindwtr",
    "~/Library/Application Scripts/tech.dongdongbh.mindwtr.MindwtrWidgets",
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Caches/tech.dongdongbh.mindwtr",
    "~/Library/Containers/tech.dongdongbh.mindwtr.MindwtrWidgets",
    "~/Library/Group Containers/5X9JC5PL7T.tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
    "~/Library/WebKit/tech.dongdongbh.mindwtr",
  ]
end
