cask "eqmac" do
  version "1.0.0"
  sha256 "b5e4a65f683072099251897826e6123da69adff979f5b83ba2f40c42c2b1707a"

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
