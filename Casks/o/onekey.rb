cask "onekey" do
  arch arm: "arm64", intel: "x64"

  version "6.7.0"
  sha256 arm:   "62c5bd5c52623bae7c56d2551f99682ca4287558aaf08354acae4c7d034d86c8",
         intel: "beb4997f17d6b1dfff30dbbcbecbf0fbc76e9d69e5f79492ed7accf42fe9e309"

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
  depends_on macos: :ventura

  app "OneKey.app"

  zap trash: [
    "~/Library/Application Support/@onekeyhq",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/so.onekey.wallet.desktop.sfl*",
    "~/Library/Logs/@onekeyhq",
    "~/Library/Preferences/so.onekey.wallet.desktop.plist",
    "~/Library/Saved Application State/so.onekey.wallet.desktop.savedState",
  ]
end
