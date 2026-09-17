cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "e1faaaebe36e40369154b0956f410bda86834bd4a67a4c2d857f25d2dfda56c5",
         intel: "399658de5ed7d1ab645b0cfd81158ad459cea3050fa6900f535ca712f56c30e6"

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
