cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.8"
  sha256 arm:   "3bd0aa877e6007c0ed25522a990b08e1358b683d8acb9d3c99e52108fac88426",
         intel: "b4c08872dc9a18646d5aaf27a15c8c19b30ef484447325a8da60dd4b5f5003ef"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Scripts/5X9JC5PL7T.tech.dongdongbh.mindwtr",
    "~/Library/Application Scripts/tech.dongdongbh.mindwtr.MindwtrWidgets",
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Caches/tech.dongdongbh.mindwtr",
    "~/Library/Containers/tech.dongdongbh.mindwtr.MindwtrWidgets",
    "~/Library/Group Containers/5X9JC5PL7T.tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
    "~/Library/WebKit/tech.dongdongbh.mindwtr",
  ]
end
