cask "eqmac" do
  version "0.3.5"
  sha256 "a369a847e4dc0d54c4859218563bbbdbfc585362a5864c3c9de4f198c7be1b26"

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
