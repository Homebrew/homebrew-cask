cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "5.12.0"
  sha256 arm:   "a9c6b56ef4919ec37326e4688fe1741c1c4242293203e0bf8ecd50bf27a71691",
         intel: "c7cff760b46fcab88bd85520dcf2f212c3c497dcf9d9bacf6dcb1d5f7507ebbc"

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
