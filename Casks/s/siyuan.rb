cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.12"
  sha256 arm:   "5e47a28f90bfa04bdce3147a0ba53ab1b8e41887857b27e639ecbf4ee3696fe3",
         intel: "427650c7c217a591f7706687154c1eeddd08920bddf6defe609de1b52e075cd8"

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
