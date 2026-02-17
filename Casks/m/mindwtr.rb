cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.16"
  sha256 arm:   "f65e85b61497666d32a8e713d5d7bb063a2af8c1b395b81d8261873f7fd019f6",
         intel: "2271202cdb1fa65a46c52409f05faf444a73ace24f3a222f5686b3ee135fd69d"

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
