cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.18.0"
  sha256 arm:   "95b42659dd9984d04f7f8bcb2b08b7b9edf898cf72bb3f8b853ed5725ef3a7bd",
         intel: "2953bfcfe15a3d0ffc41fb054cf4a60e3ea69fa9a1b1b052b6c10e022dbd2ffb"

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
  depends_on macos: ">= :monterey"

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
