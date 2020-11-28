cask "daedalus-mainnet" do
  version "2.5.0,15326"
  sha256 "b5ff1f69ba7334d2aa95d2816e41ec2627e565e5bd3ada1d8a4c6ef94d77dc11"

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
