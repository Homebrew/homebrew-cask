cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.4"
  sha256 arm:   "ccab152bc5b44586c5f9595f323d409b30eb7fd518cb9a58675e437ea5ffe1fc",
         intel: "012a43677d9fdf9c7026e7a65d56ba20496c552900d81f4a4375be6a5d792286"

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
