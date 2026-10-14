cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.7"
  sha256 arm:   "07a4a8c9c86fc894c208732b209e01470e09c2e661975a4eb0244a72723e6c53",
         intel: "827d2220362a3ee0685a730360fee1d3d0dd60b5e2d93e048f09b0bf700390a8"

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
