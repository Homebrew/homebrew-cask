cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "3.14.0"
  sha256 arm:   "c4071780c9f7915ea2bfabcae522a05688106f0e877eabfecf6ede09c7c6e36e",
         intel: "9cf0bf33b2581111249f4a08dea9ab06ccd957f24088f4fdf9882188fddf90d2"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v3.14.0/OneKey-Wallet-#{version}-mac-#{arch}.dmg",
      verified: "github.com/OneKeyHQ/app-monorepo/"
  name "onekey"
  desc "Secure, open source and community driven crypto wallet runs on all platforms"
  homepage "https://onekey.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
    "~/Library/Logs/@onekeyhq",
  ]
end
