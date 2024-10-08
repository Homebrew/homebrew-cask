cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.2.3"
  sha256 arm:   "8b9afe1a6ff7585cedb0c858c01ceae80eff78e22d1042355b9020010483e6b2",
         intel: "ea1fdd8f720f30a014c336a901981df9cf177ff6e93405fd30a7b923db098dac"

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
