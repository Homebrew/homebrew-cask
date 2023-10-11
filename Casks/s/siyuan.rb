cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.10"
  sha256 arm:   "65b8939e14d664541312660b520d6587d3dfe5e66d4a178d7fadbcc7ecf6f813",
         intel: "e7ab9cfa93c749942627e3e50195b652500f5ec2f840c7bd36577980d1d01bc0"

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
