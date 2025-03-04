cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.24"
  sha256 arm:   "b555dc9af94c2aa69550ae0cb3a798c5e391d22cbf6bf71c5d1868dc24cf6b9e",
         intel: "6b82a57d8ce0cbca5a08cc07d42056ec1b1a752f3ca7e3d6f451daf3d0be63b6"

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
