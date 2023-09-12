cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.5"
  sha256 arm:   "c0241839d10e81917ac736a03bda9aa74cfda380c5deced49ae23e48dc1bedaf",
         intel: "29d80d6f6196b248f84825c9e7e696ee5c6e6be15cd843d8a0990145393dc6b5"

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
