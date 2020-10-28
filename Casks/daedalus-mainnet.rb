cask "daedalus-mainnet" do
  version "2.4.0,14924"
  sha256 "e52dcfd5c4a4f1b92bed85cb1e936f77bbeca1b1b604869b14d1a4071a336f63"

  # update-cardano-mainnet.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"
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
