cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "a80aaa0a08c95ddf74181e61a67a8f1c59e9ac81788653b7646cd78cd0284d6a",
         intel: "55a450c271e2decc0d502b3ad7188db13d83d1582855e6af028d037cf2b205b9"

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
