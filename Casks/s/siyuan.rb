cask "siyuan" do
  arch arm: "-arm64"

  version "2.11.0"
  sha256 arm:   "bd1639fd56f26e0f374656d4879bbab2d3d1001e68fec27f1c97c6a3f0cb8faf",
         intel: "544960ea908fa22148eb3852ff7b4d25240fe61ed67c26cd31802acdef9f6bcc"

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
