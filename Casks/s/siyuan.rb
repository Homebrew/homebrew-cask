cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.3"
  sha256 arm:   "112137f5ac2f1db3ac41ff5740b31f91a205f08305d55e1745801232cc631aeb",
         intel: "8e03bd70427030d4ada9c4107234ecd5d518b56054c96ac09cb79073eb2bc215"

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
