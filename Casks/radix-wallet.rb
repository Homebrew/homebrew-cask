cask "radix-wallet" do
  version "1.3.3"
  sha256 "aeac5f36a4a672d24108f4e05b48e0e59e4202b769de1ca253b86d0c47a9102b"

  url "https://wallet.radixdlt.com/files/Radix-Wallet-#{version}.dmg"
  name "radix-wallet"
  desc "Desktop wallet for the Radix DLT cryptocurrency"
  homepage "https://wallet.radixdlt.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Radix-Wallet-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Radix Wallet.app"
end
