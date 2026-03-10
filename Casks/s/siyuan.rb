cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.10"
  sha256 arm:   "40fce74d1059c5b09fff5499a07e8fb05562477e3e3983c067bd8a6c9997e1b9",
         intel: "78e5e23fd9153088c96e7856c91f098d4fa85e05222e9a239aa4153cb0e73cdb"

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
