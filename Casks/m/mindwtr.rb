cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "d446a4f0a9223d0e827620cd353be95e41ccc6605b8685cc653a4fd9268d8da5",
         intel: "3d7c2ccad985b23e346c2af88e88243483d02c5687786911a0a96ef23f810c61"

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
