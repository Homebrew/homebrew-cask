cask "siyuan" do
  arch arm: "-arm64"

  version "2.11.3"
  sha256 arm:   "3a8f0efd532253257f57c46d004d512ed3a218812e5149ac0c83e87f336fbdac",
         intel: "2732bb947c6e5ab590f9c2b22ff9007e4b0d35643f253cf6ef83cf21625ff463"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
