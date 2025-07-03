cask "siyuan" do
  arch arm: "-arm64"

  version "3.2.0"
  sha256 arm:   "c05a8b4240b159bbb15780397bafaa4e92b333303479f95b9fb10b47daf52df1",
         intel: "01b13a7fc1072a7de4c21e694acba0b662c16c4be6e35dcc6e760f77c1945b6d"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
