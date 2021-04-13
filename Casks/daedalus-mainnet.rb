cask "daedalus-mainnet" do
  version "4.0.4,17475"
  sha256 "b267673e5c02e86e8c3fa0ac73681106cb502dc54d1872d22938c52042817914"

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
