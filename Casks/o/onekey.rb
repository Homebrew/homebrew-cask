cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.6.1"
  sha256 arm:   "ab604c35104d956b984ea5711f9e553e092a7054c5ddca4f8cb5a36b9e0847df",
         intel: "8152aad92bd36fbbf6636466c833dfed70df763769709df603b4e7cb9348cf4c"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v#{version}/OneKey-Wallet-#{version}-mac-#{arch}.dmg"
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
  depends_on macos: :monterey

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
