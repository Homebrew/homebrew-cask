cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "73ef3a821cf084c1c1eebc2f3fa8b338a1ebcd9ee38e4264bdaae0fe12c815c5",
         intel: "3b295f16119b5b907da13c0c08661759533958c7b14f886201d9bb5a1d98ffd1"

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
