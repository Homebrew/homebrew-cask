cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "b3d748c3210652bb404ee726274c18972fda39c27a8031b1649a7aff3d29d007",
         intel: "cfdfb4843ef24d024ae7804cb19df2039ee78a9411b8357250fd95b595d2cadf"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Caches/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
    "~/Library/WebKit/tech.dongdongbh.mindwtr",
  ]
end
