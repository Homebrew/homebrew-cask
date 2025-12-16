cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.0"
  sha256 arm:   "6a36e4a5e0a91509dffd21b2c4b5e9b9bdc6fdfc4f961a49f8e28a4e96449575",
         intel: "05508f2a34e98ed9940309212442ed3a888a664b2445461478b11b25d6d91a47"

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
