cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.8"
  sha256 arm:   "6c46bf1d2d252dc2e35dfd1f125dfbb9cbb40fff5965f5ebcfc72d39cd2708a1",
         intel: "b4fbcf69d76439c09b61fc7193668d25f0d39d93de62f3ac86d5154e242ccd51"

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
