cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.10.0"
  sha256 arm:   "8597f59c9b8df7e01130602220490ec8a3cd4561f0bbed4dd19b05f0f0ead933",
         intel: "d5c1909aa47ed541af5647dd7c4a2367101aada62a81f76b0375390c853f6fb5"

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
