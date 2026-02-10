cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.5"
  sha256 arm:   "bd96fd9ffbf0b54172a6f823b82f4c0d7c0b15bb332d89b61de43479c1d60e6c",
         intel: "d1d70610e062dda4b64923acee39b1b0feea13d5941d35093e0926de1ad6b9c3"

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
