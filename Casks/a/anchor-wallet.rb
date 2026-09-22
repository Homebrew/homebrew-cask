cask "anchor-wallet" do
  version "1.4.0"
  sha256 "bec00cb5f9a58883b4eabf41d5e44c7baee74940b0cb57d282a472ec52c644bb"

  url "https://github.com/greymass/anchor/releases/download/v#{version}/mac-anchor-wallet-#{version}-x64.dmg"
  name "Anchor Wallet"
  desc "EOSIO Desktop Wallet and Authenticator"
  homepage "https://www.greymass.com/anchor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Anchor Wallet.app"

  zap trash: [
    "~/Library/Application Support/Anchor Wallet",
    "~/Library/Caches/com.greymass.anchordesktop.release",
    "~/Library/Caches/com.greymass.anchordesktop.release.ShipIt",
    "~/Library/Logs/Anchor Wallet",
    "~/Library/Preferences/ByHost/com.greymass.anchordesktop.release.ShipIt.*.plist",
    "~/Library/Preferences/com.greymass.anchordesktop.release.plist",
    "~/Library/Saved Application State/com.greymass.anchordesktop.release.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
