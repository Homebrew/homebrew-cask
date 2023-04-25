cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.4.0"
  sha256 arm:   "707d355a7322bd8a09be98c552c62774c825d1aff600f17fee244b564044c2f5",
         intel: "b400f14cecf569e9adae70f625769396576ab6fa384185037af81a54b9393ff2"

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
