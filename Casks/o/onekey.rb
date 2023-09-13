cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.13.0"
  sha256 arm:   "254c727165088764d999d65b0f713dbd30ae5c0e05c8dee4973bbed13a5ec5e3",
         intel: "2d3e26202b41313e1d51a76f25fbef0e77f3056e5f6da7f41bcd21a9321e9726"

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
