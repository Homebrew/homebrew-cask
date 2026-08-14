cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "c67a0fc45416f4c881c8eec578e55204e8afb8b29e7bb4a712f52e7cdd595cd9",
         intel: "9d1fcb9b16d2fe2b47ec2ea8928a0fce298cafc790cf9d2b7b58a44b9ae03c3e"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Caches/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
    "~/Library/WebKit/tech.dongdongbh.mindwtr",
  ]
end
