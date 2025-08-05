cask "anchor-wallet" do
  version "1.3.12"
  sha256 "043f92369bf5dbc41d48ce6439eb2138017bc7f21694c60e2eab9d321a819508"

  url "https://github.com/greymass/anchor/releases/download/v#{version}/mac-anchor-wallet-#{version}-x64.dmg",
      verified: "github.com/greymass/anchor/"
  name "Anchor Wallet"
  desc "EOSIO Desktop Wallet and Authenticator"
  homepage "https://www.greymass.com/anchor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
