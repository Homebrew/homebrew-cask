cask "daedalus-testnet" do
  version "4.12.1,22105"
  sha256 "2a7d3c2ee346157445d9e4a4eccc76c303fbf78cf1fe4460a63438626592c1d2"

  url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-#{version.csv.first}-testnet-#{version.csv.second}-x86_64-darwin.pkg",
      verified: "updates-cardano-testnet.s3.amazonaws.com/"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  livecheck do
    url "https://updates-cardano-testnet.s3.amazonaws.com/daedalus-latest-version.json"
    regex(%r{/daedalus[._-](\d+(?:\.\d+)+)[._-]testnet[._-](\d+)[._-]x86_64[._-]darwin\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-testnet-#{version.csv.second}-x86_64-darwin.pkg"

  uninstall pkgutil: "org.Daedalustestnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Testnet",
    "~/Library/Preferences/com.electron.daedalus-testnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-testnet.savedState",
  ]
end
