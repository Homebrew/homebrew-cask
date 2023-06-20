cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.2"
  sha256 arm:   "a7b24294ef17b0303c0f6f61e6a907641cfe272b6fd536d6720c18a66640d562",
         intel: "a4fd6e271904205c5a648462239906e652ea23d1fc7ec79f805c320239b89586"

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
