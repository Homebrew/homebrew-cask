cask "eqmac" do
  version "1.3.0"
  sha256 "fdce323f5fc895b30026b6658cd2ecce5607d59db23aeb00f04e842b9e110aa4"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.pkg",
      verified: "github.com/bitgapp/eqMac/"
  name "eqMac"
  desc "System-wide audio equalizer"
  homepage "https://eqmac.app/"

  pkg "eqMac.pkg"

  uninstall pkgutil: "com.bitgapp.eqmac.pkg",
            quit:    "com.bitgapp.eqmac"

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
