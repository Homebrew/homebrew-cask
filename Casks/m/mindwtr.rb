cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "c80cd5a97995774c8af6d8c71a4580c32a82906ec6e65391ea7f2d2c2df41096",
         intel: "b0706fbaede875afa378a369e855af29978b8ed37ddf4d5e3019a169b5cdff9e"

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
