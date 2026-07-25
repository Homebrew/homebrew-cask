cask "siyuan" do
  arch arm: "-arm64"

  version "3.7.3"
  sha256 arm:   "f9932d0701fec82654d016f218defb62f7f5dd47f7cecd43bbf5d725c9166884",
         intel: "c8cbcbc0fb931f930ba4e7825baea81e6dc0ba6dcdc51f76bc5d13e75df11633"

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
