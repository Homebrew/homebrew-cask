cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.24.0"
  sha256 arm:   "8caef3687e4de3a8b752b26970c8cafb4a9e17922421595a5d99bb085b8067eb",
         intel: "2d6c7f67a68cf4372c967481bd7c69e18471c85223b9412c87fc0898dbbc4fd3"

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
