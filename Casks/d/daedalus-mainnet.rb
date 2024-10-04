cask "daedalus-mainnet" do
  version "6.0.2,70026,ca5b00360"
  sha256 "62836fbe786aa2dcd86941438acf10cac1d32e68240e3863c9e08588f2b1becb"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.csv.first}-#{version.csv.second}-mainnet-#{version.csv.third}-x86_64-darwin.pkg",
      verified: "update-cardano-mainnet.iohk.io/"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  livecheck do
    url "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
    regex(%r{/daedalus[._-](\d+(?:\.\d+)+)[._-](\d+)[._-]mainnet[._-](\h+)[._-]x86_64[._-]darwin\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-#{version.csv.second}-mainnet-#{version.csv.third}-x86_64-darwin.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
