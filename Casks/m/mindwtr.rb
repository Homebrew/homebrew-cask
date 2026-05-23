cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "9eb3e08a1a4741e974e29a6aaa32ed18499291bac0a904471b67c0b9c5109cbb",
         intel: "f1d25eb27cf6f5665bd54930de608bed3ffb4b016f3ebd3a3dd778ba54b542fa"

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
