cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.3.0"
  sha256 arm:   "ae99cda8e6058b7f14e16bb8f0ee90411920f4180b70481822f23a7c2a7bcd97",
         intel: "9ffe7ba31acb94d0fabbd9db9cd7be378658ce8a407984d407a720f4c455b513"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v#{version}/OneKey-Wallet-#{version}-mac-#{arch}.dmg",
      verified: "github.com/OneKeyHQ/app-monorepo/"
  name "OneKey"
  desc "Crypto wallet"
  homepage "https://onekey.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
