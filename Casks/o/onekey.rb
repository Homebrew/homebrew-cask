cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0"
  sha256 arm:   "9c8d7b5d7b1fe6d65ce1a645ad1d707b79e45657d87e242fa2e74e6a291ed2ab",
         intel: "9316880dc3f0edefc004e99fc97cc59f1cf5f1fe10bae7e3fb0c52a0a5d9eb94"

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
  depends_on macos: :monterey

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
