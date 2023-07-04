cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.4"
  sha256 arm:   "b4d0ff03a14e185fffafc2b9b98c9000a4b4a77280fbdcde5f33b71daced2bc7",
         intel: "3b47607fe81b6910714eebef0cfc87339cc93112c3b5e8751e002e54236b06af"

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
