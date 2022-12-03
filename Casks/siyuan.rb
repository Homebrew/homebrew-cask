cask "siyuan" do
  arch arm: "-arm64"

  version "2.5.2"
  sha256 arm:   "a88ba720cfc39a72e998418ef720af939cc024221617bede2b333c00d58dbaee",
         intel: "1b1cc6e276910875fc8ce11ef9dc6f966515f1028031a5b62a6981e2eead521e"

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
