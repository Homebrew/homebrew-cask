cask "siyuan" do
  arch arm: "-arm64"

  version "3.2.1"
  sha256 arm:   "6153d6189302135f39c836e160a4a036ff495df81c3af1492d219d0d7818cb04",
         intel: "fbe6115ef044d451623c8885078172d6adc1318db6baf88e6b1fe379630a2da9"

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
