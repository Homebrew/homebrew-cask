cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "06c2144de71ef25d234da85c616015d61c60473d7e79148d50f10404ef25849c",
         intel: "1a004c890237c84dac47413d9b67a69c6819ebfb158b5d7a6f84f998c7b10c34"

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
