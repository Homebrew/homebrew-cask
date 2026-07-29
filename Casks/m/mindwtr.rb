cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "22f9549a51b40eff553b25306951b95c12448612dd8597234203fbbf5999ba03",
         intel: "05ede650092b526212c050b4fb7071b660712e3baae7f75a6cd2313fb1eba39e"

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
