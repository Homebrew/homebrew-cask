cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "1c8180160355f1c90d44511ac0202dd06d3d7c76dd3826c41656a93c9a1b504f",
         intel: "61a36e5800141742d51b6eb3eea534d3eb1776c4ad48f4ffd91b9241bde6ca51"

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
