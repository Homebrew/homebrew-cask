cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0"
  sha256 arm:   "2d7e5ede3c698dbdb28c029860daee653fd6992ca4660a4c8d066857c0887870",
         intel: "f440e7394ed4757d2c910e3a2ebd81158ae37ec3bb95e0b064d8beca410e1b65"

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
