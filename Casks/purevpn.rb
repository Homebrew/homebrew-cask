cask "purevpn" do
  version "7.2.1"
  sha256 :no_check

  # purevpn-dialer-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://purevpn-dialer-assets.s3.amazonaws.com/mac/app/purevpn_setup.dmg"
  name "PureVPN"
  homepage "https://www.purevpn.com/"

  app "PureVPN.app"
end
