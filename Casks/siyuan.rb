cask "siyuan" do
  arch arm: "-arm64"

  version "2.5.5"
  sha256 arm:   "3e17ac328913af3c867d9a3c009ea44605b40995c122b3453a762cd593f7cdf8",
         intel: "55543e60e6e64cc3b08fd9ffc22de01639a94777bf10d6bbc2dfb52cb2181d2c"

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
