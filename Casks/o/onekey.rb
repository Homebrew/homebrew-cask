cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.6.0"
  sha256 arm:   "3c547556bca3fc4abf922015cd4bdb571905372175b817050cacf9e694111f15",
         intel: "a5233126407ec28b6d5c95bf8888ac110694e3975d1e30bf51cc6bcbd9af084b"

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
