cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.4"
  sha256 arm:   "0d5f0459064da62c984ad89481c2d7b3f5ad00ba97107480d4fbd59198b5192b",
         intel: "3a93b5897e31e7842627b31132e822be80f9e2b798c8c936e9a3c8c54bec0325"

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
