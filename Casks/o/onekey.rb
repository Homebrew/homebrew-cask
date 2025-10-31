cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.16.0"
  sha256 arm:   "8d39800c3d3a6dfa33261ad19572affb9a777be014a9f5d2241a1bf3e7431d52",
         intel: "b51be5a82ae81785b860a0bf6ff7542d5e19a955ee5a6d22d24d351d0990b4d2"

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

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
