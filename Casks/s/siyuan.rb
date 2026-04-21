cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.5"
  sha256 arm:   "8fc2ff58c6ed400514cb27e44d70315a7f861d77cf3d7b16d64f2644171186a9",
         intel: "16e7560eb01c8e1d6af88662c07305131fde3ef4e050a91fa06c1593b6e5ed29"

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
