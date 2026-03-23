cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.6"
  sha256 arm:   "c8a13102c9f615fd64bd8063123eea74f3d2db37c82d25a9ad5d6c613edcc75b",
         intel: "48b90e686afa2dd3989a554b716f58e6c271b2bbc5d4385d440a528f8eb0f8f1"

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
