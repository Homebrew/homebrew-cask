cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "5af51e4b99e5e7f62b4735fc069e044c9cf7eecb39cf9b17acd9908ef027518b",
         intel: "fad57c70f9bb060a14c0be37bbdd13dc081201db7b5f697c4f2f10368ac8dddb"

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
