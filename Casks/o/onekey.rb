cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.8.3"
  sha256 arm:   "ddd2dbb892d319e90b2b29c590fd4530d65419a868309bbadea1a4cc95a31f46",
         intel: "d64606ccb578b4695f0640b35055fd7b2b73687df66cd379efadf0b77551197e"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v#{version}/OneKey-Wallet-#{version}-mac-#{arch}.dmg",
      verified: "github.com/OneKeyHQ/app-monorepo/"
  name "OneKey"
  desc "Crypto wallet"
  homepage "https://onekey.so/"

  livecheck do
    url "https://data.onekey.so/config.json"
    strategy :json do |json|
      json.dig("desktop", "version")&.join(".")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
