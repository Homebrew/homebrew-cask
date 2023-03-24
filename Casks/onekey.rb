cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "e7a843ff293816440a40b1bab88ae7ea748c3487da3e391546df5dd879ddd300",
         intel: "e34cfa5ae9e11bc71d66ad6d2a01b4e0ec7a300b40c71c2342013bad64b5dc2b"

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
