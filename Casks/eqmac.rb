cask "eqmac" do
  version "1.0.0"
  sha256 "f0cf0831da9fc08f7c2f267b6a691173b32b4aa688625afcc43cade6d5f65a7f"

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
