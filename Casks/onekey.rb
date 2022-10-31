cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.16.0"
  sha256 arm:   "c82dbb8fd1d711f07f7fbac9642573e615d0ec7d403bab1c2941d3be7d8b7bde",
         intel: "abdf03a7292186ba756044337799d68d0ed4d39ed5a44b4e2700859255c8b440"

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
