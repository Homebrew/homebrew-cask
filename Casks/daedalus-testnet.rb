cask "daedalus-testnet" do
  version "4.2.0,18540"
  sha256 "87eda5ac63c7d4df6ac9cf4b948f61c11c5d77ac716ac5a3e12a2212056e8c05"

  url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-#{version.before_comma}-testnet-#{version.after_comma}.pkg",
      verified: "updates-cardano-testnet.s3.amazonaws.com/"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  livecheck do
    url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-latest-version.json"

    strategy :page_match do |page|
      version = page.match(/"version":"(.+?)"/)[1]
      build = page.match(/-(\d+(?:\.\d+)*)\.pkg/)[1]
      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-testnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalustestnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Testnet",
    "~/Library/Preferences/com.electron.daedalus-testnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-testnet.savedState",
  ]
end
