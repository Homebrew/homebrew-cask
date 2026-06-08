cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.9"
  sha256 arm:   "43d2df4bb8d0533ccdc18a8d83b51afc7a6b1448a18dd697be1bbf2c7eb5a0a0",
         intel: "b5b7f5cf9640a63fc79687d746f6737a4fbb063128d060f2bc474156ac0081b0"

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
