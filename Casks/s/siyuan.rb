cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.2"
  sha256 arm:   "5690b2ab43fb7c98139bc1dd474a711b8bcbeb52fba50106a956f81326ba3f2c",
         intel: "21a8e8ab633e6e48b6874dd7c224717681b6356c378cb41df3844569bbb7af92"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
