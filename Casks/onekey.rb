cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.29.0"
  sha256 arm:   "a2ba5a660bf58c8e5b1c26ab5197d8b180608c30bec51b900fba1d0b1c31b945",
         intel: "95a9b9e1e26f7e5833bb0cb6352d06d662e542cbe98088f2af459887e4c754db"

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
