cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.18.0"
  sha256 arm:   "3a7d1a0851f6f573440f600c7fb72d2ce52ebccf21a1c311d5706a4b8f70ddd3",
         intel: "eafaa8a483a44dac1ffeb2375398802b7df53d931416aaace6760abd0acb0e69"

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
