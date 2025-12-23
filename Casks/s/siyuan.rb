cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.1"
  sha256 arm:   "a091edfdce133c51f555c3d8b7c7d1e66e4cfca8228907257ff51519ddd1a077",
         intel: "caefb88496d30b2acf4bf54388a29e81bc667ec6a2e71f5961b76544cfa1f102"

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
