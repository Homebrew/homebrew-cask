cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.6"
  sha256 arm:   "35ebb716c549001bb4dd3c048a3fa6b966b5993e5b14af61b5266877b9e62d7d",
         intel: "9945cee25c29d4875b2fc0af99ba79c67b8433ff6e56be8ef21f71f270dc7820"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"
  binary "#{appdir}/SiYuan.app/Contents/Resources/kernel/SiYuan-Kernel", target: "siyuan"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
