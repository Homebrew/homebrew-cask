cask "siyuan" do
  arch arm: "-arm64"

  version "2.5.3"
  sha256 arm:   "7505aae9659d9d46fd4e0b1c487d0085ea2b118971f40da906adceb16413baea",
         intel: "0e22615411787cea8457ece4249d910b737e9e0ca0800a49871648bbd37749ab"

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
