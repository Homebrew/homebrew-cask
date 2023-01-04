cask "siyuan" do
  arch arm: "-arm64"

  version "2.6.2"
  sha256 arm:   "7b931201e4fbbdea7680bedf3ff1352920907106e5c6f8a89818943774589fe5",
         intel: "57100ac921c1d37da18931d03138458331edeb669789a101f61a7591cc0a78dc"

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
