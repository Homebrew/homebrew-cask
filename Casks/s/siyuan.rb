cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.11"
  sha256 arm:   "cdeaec9b188897026e3449a1baa5e0d775240936ac2706a1221933fe6d86a3a3",
         intel: "422a803046fe2fb38179640f109619bea60383f1e0f37e868db97ccc9ad0cded"

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
