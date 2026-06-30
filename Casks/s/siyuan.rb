cask "siyuan" do
  arch arm: "-arm64"

  version "3.7.0"
  sha256 arm:   "10dbe06db60ed206f6269d06f6a518b4d26340fdb8c8996c443b62418254f155",
         intel: "897fed06aa11ff233de41251147fdf3c263bb20f674bd52690d75eb8e5b26758"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :big_sur

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
