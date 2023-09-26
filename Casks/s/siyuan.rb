cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.7"
  sha256 arm:   "c425e168dd49e6a2455839926737a73d5dbf78f3db6f54145936a45a62c2d8a6",
         intel: "d77dc3c35381228c664315b47a5b571cea356598d614290316d7c8773a731a71"

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
