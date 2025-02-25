cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.23"
  sha256 arm:   "28b37efbdb49aca5f985498b14a4f1cfe30963c362466406154dd9b6bf15b272",
         intel: "4e77badb39960aa41ef9a65309be34daf45c453a3a21e314c83b03a5cb2f1af2"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
