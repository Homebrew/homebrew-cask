cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.16"
  sha256 arm:   "551224c77ae8a821a126536dd085bf6252f19b1a0f6c5468438b4dfe949a569b",
         intel: "8b45667564e95d5b04bb01f4f5c33ecee9c5296e0a0c8da686915c092ae1e595"

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
