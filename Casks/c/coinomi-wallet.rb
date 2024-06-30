cask "coinomi-wallet" do
  version "1.2.4"
  sha256 "da8de4e58b4de69454449e4aad2f69daab658c40c6669d8b2e2d434b26c5dcf4"

  url "https://storage.coinomi.com/binaries/desktop/coinomi-wallet-#{version}-macos.dmg",
      user_agent: :fake
  name "Coinomi Wallet"
  desc "Securely store, manage and exchange many blockchain assets"
  homepage "https://www.coinomi.com/en/"

  livecheck do
    url "https://www.coinomi.com/downloads/"
    regex(/href=.*?coinomi[._-]wallet[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Coinomi Wallet.app"

  uninstall quit: "com.coinomi.desktop"

  zap trash: [
    "~/Library/Application Support/Coinomi",
    "~/Library/Caches/Coinomi",
    "~/Library/Saved Application State/com.coinomi.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
