cask "eqmac" do
  version "0.3.6"
  sha256 "f9267600af55262e3cadc2ecf4daba9789362e8158d221fba22cbc8e275c053b"

  # github.com/bitgapp/eqMac/ was verified as official when first introduced to the cask
  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.pkg"
  appcast "https://github.com/bitgapp/eqMac/releases.atom"
  name "eqMac"
  desc "System-wide audio equalizer"
  homepage "https://eqmac.app/"

  pkg "eqMac.pkg"

  uninstall pkgutil: "com.bitgapp.eqmac.pkg",
            quit:    "com.bitgapp.eqmac"
end
