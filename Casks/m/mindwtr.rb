cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "09afc32da6184e2b921f085025fd1fe4eeb32f1c770cfb6d1bbbeb51ab4cade6",
         intel: "b2f6fededce8002098556c7684df51206cbbfb4b601fbe350fbe326b45f6c2db"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
