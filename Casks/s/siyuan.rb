cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.7"
  sha256 arm:   "98e2282596d7ff2420603ec67a0d2b8db925f597911ed896e40da20053369a75",
         intel: "e9f994b3178777f9cb716427f3fccebb0f3cfa17b016150345e54a812f433313"

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
