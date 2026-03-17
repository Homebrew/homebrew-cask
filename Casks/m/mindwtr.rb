cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "46bbd127b31774ec62d09115ac2bf7b373fd3da66f2fc3faab5455398d1cab29",
         intel: "86021165db5f6529c2748297a79c9ecfe0ccfa3879c99047a25f464658eb0774"

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
