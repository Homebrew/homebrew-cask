cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "af910e593936957c81f9e9b95b4479ca56d4d8663efa7e26d1dec6f5542908c7",
         intel: "ad2c8147f77a1438c4f785e9e38ec9f971b622749888457cdada2a7b02f359c2"

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
