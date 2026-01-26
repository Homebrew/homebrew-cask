cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.4"
  sha256 arm:   "24ba9166f558cf8a2a53478dd0f2dd058fbbb61807e8b8d85bc69af2ed1587a7",
         intel: "615d2ff29f49cbc18dbf05adf0a7154da5eb090948f35f09983d0ad7351c8164"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
