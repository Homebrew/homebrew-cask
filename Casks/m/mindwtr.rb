cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "07a68d8978357f8831d290cfeec61db4eb98b3c59ff2e132b9fc62f9d90cd759",
         intel: "8da3ed850fb3d016c97361c630b7e8e49725f9669579603dac14ba4faf81038f"

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
