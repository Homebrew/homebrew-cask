cask "daedalus" do
  version "0.15.1,3.1.0:8695"
  sha256 "26746a905bcbca4fc9f88add86a64f3bba69fae051b82308b2437f04f2011478"

  # github.com/input-output-hk/daedalus/ was verified as official when first introduced to the cask
  url "https://github.com/input-output-hk/daedalus/releases/download/#{version.before_comma}/daedalus-#{version.before_comma}-cardano-sl-#{version.after_comma.before_colon}-mainnet-macos-#{version.after_comma.after_colon}.pkg"
  appcast "https://github.com/input-output-hk/daedalus/releases.atom"
  name "Daedalus"
  desc "Cryptocurrency wallet"
  homepage "https://daedaluswallet.io/"

  pkg "daedalus-#{version.before_comma}-cardano-sl-#{version.after_comma.before_colon}-mainnet-macos-#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: "org.Daedalus.pkg",
            delete:  "/Applications/Daedalus.app"

  zap trash: [
    "~/Library/Application Support/Daedalus",
    "~/Library/Preferences/com.electron.daedalus.helper.plist",
    "~/Library/Preferences/com.electron.daedalus.plist",
    "~/Library/Saved Application State/com.electron.daedalus.savedState",
  ]
end
