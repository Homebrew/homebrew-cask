cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.6"
  sha256 arm:   "6e99db064ead3ee9c3a2c9d1456353be5aefa57b839cdf9ca68c26bbe55f2c8b",
         intel: "7f41ef483f520716c18f95c340ed5d51016f61b03b738dc3d4f8630eff2b26e7"

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
