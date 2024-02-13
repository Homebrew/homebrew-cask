cask "siyuan" do
  arch arm: "-arm64"

  version "2.12.8"
  sha256 arm:   "51f75c7a97ed74148b1083a2d85aa5f8f286d654dbf614d1041c3aef6652ecd8",
         intel: "fd0516e1b3fe7a65035e6d492e8db5e4c178b7e014950df7782cb43118c4550a"

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
