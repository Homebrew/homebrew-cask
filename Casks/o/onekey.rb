cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "4.20.0"
  sha256 arm:   "4e1a1c3c393f9cb2d8cd6460f94de1cf28fdfbb8efadf1435931653b15c1074d",
         intel: "cdb5a85f3874bb4daf40298f3138507c779520e897ee046057e811fdf3c94387"

  url "https://github.com/OneKeyHQ/app-monorepo/releases/download/v#{version}/OneKey-Wallet-#{version}-mac-#{arch}.dmg",
      verified: "github.com/OneKeyHQ/app-monorepo/"
  name "OneKey"
  desc "Crypto wallet"
  homepage "https://onekey.so/"

  livecheck do
    url :url
    strategy :github_latest
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
