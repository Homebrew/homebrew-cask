cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.19.0"
  sha256 arm:   "b76484241df57f5668d7a172eeaca7d38cb34b162a7d7b97a2b27ec6bc846400",
         intel: "75742281262bc466692261530ae1c28a76d0e28db1c15747be15016b5ed5cfe4"

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
