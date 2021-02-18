cask "daedalus-mainnet" do
  version "3.3.0,16556"
  sha256 "2d1bbacc636d7e1e73f9f9ce13c3570f14ea279747fdbbc2bb5568a6ad2196a6"

  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg",
      verified: "update-cardano-mainnet.iohk.io/"
  appcast "https://update-cardano-mainnet.iohk.io/daedalus-latest-version.json"
  name "Daedalus Mainnet"
  desc "Cryptocurrency wallet for ada on the Cardano blockchain"
  homepage "https://daedaluswallet.io/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"

  uninstall pkgutil: "org.Daedalusmainnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Mainnet",
    "~/Library/Preferences/com.electron.daedalus-mainnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState",
  ]
end
