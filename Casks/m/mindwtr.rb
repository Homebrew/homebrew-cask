cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.6"
  sha256 arm:   "c8c82792d97ff3fb5c3ba9deac35c11310c0c16aec48d93367e9c686db9459f1",
         intel: "26fa861edeb4a7c698ff70cdd7fe8f82bf92662f6bd06e2196e813d7e73fd597"

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
