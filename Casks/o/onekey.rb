cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.13.1"
  sha256 arm:   "a623510e0fb8406379694a9b6e7893e41acdd0d86f9eb9a2a0daa1396a944563",
         intel: "94aac38dfd9c50b8cd0b0448a64378ef1e3325dce4ca87c34165d6352fe712fa"

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
