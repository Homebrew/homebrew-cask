cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.31"
  sha256 arm:   "375b913f9d8eeaf4727e2c84ffa4365309083f83acdf17cbbaa8459f796b7369",
         intel: "c5236f5a99c1a315e760686482ea16eae035b2229ee4147e483ba6a7606741a7"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
