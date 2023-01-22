cask "daedalus-mainnet" do
  version "5.2.0,22505"
  sha256 "3d35c0cf0f05751f79e3064f86b0597905db50b8b44511f1d275d8430bdded89"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.csv.first}-mainnet-#{version.csv.second}-x86_64-darwin.pkg",
      verified: "update-cardano-mainnet.iohk.io/"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  livecheck do
    url "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
    strategy :page_match do |page|
      match = page.match(%r{/daedalus[._-](\d+(?:\.\d+)+)[._-]mainnet[._-](\d+)[._-]x86_64[._-]darwin\.pkg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-mainnet-#{version.csv.second}-x86_64-darwin.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
