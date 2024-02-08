cask "trezor-bridge" do
  version "2.0.27"
  sha256 "a8a5352f888467cb1bc3b4273ee26c7f0da2a58f60e31aeffea46153aa03be07"

  url "https://github.com/trezor/webwallet-data/raw/master/bridge/#{version}/trezor-bridge-#{version}.pkg",
      verified: "github.com/trezor/webwallet-data/"
  name "TREZOR Bridge"
  desc "Facilitates communication between the Trezor device and supported browsers"
  homepage "https://wallet.trezor.io/"

  livecheck do
    url "https://raw.githubusercontent.com/trezor/webwallet-data/master/bridge/latest"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  pkg "trezor-bridge-#{version}.pkg"

  uninstall launchctl: "com.bitcointrezor.trezorBridge.trezord",
            pkgutil:   "com.bitcointrezor.pkg.TREZORBridge*",
            delete:    "/Applications/Utilities/TREZOR Bridge"

  zap trash: "~/Library/Logs/trezord.log"
end
