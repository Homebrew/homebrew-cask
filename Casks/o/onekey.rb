cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.6.3"
  sha256 arm:   "c8894de630c724506165940e48affc8670dd2b078c4babdf6a98ba85094f7f86",
         intel: "7421ac745fb4bc6dd46307ae7276527e60cc67691ffb774f2a65d5ba6a6f4327"

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
