cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.7"
  sha256 arm:   "4c5c47145c21119e4b9ee6f9cfe1c697ff312501b9a729b26cc8152ee66c4ec6",
         intel: "72fec5cd96548d6a986f839ff984f4dcf669541e08077237c99a0f9b1eb3a6c5"

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
