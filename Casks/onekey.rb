cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.15.1"
  sha256 arm:   "eed5bcf13d2c32d469a66d4eea5a4eab808c70c9d798941ce3125446164f4b19",
         intel: "b6692f967702eaeb5b060fcaf1fd7fe972cbe1c286fe45943e5a3e143630e26a"

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
