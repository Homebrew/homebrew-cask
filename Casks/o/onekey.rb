cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.12.0"
  sha256 arm:   "016950116023a7565af556b72f1295cc173629f1bb51791f439bb9c6f62abb25",
         intel: "22d46527864b429cdec8b3ba371a228ae8b0fd4152091dc93b2ee8239f234db2"

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
