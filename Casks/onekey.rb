cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.25.0"
  sha256 arm:   "dd650a4f212720f8c9f46354a145012d72c3ba631ef3f87c7ffd4deef950358e",
         intel: "bf3c536536b6ae193d5b142633f5298f35dab66300e0d444e8237a2bd6ad9899"

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
