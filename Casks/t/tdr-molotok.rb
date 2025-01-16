cask "tdr-molotok" do
  version "1.0.6"
  sha256 "4a6ce0f037b1fb6b6e6ee4786a502ac838c01c16d738ef46bd8bd810b6a81de6"

  url "https://www.tokyodawn.net/labs/Molotok/#{version}/TDR%20Molotok.zip"
  name "TDR Molotok"
  desc "Dynamics processor/compressor"
  homepage "https://www.tokyodawn.net/tdr-molotok/"

  livecheck do
    url :homepage
    regex(%r{href=.*?Molotok/v?(\d+(?:\.\d+)+)/TDR(%20|\s)Molotok\.zip}i)
  end

  pkg "TDR Molotok.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRMolotok.AAX",
    "com.TokyoDawnLabs.TDRMolotok.AU",
    "com.TokyoDawnLabs.TDRMolotok.VST",
    "com.TokyoDawnLabs.TDRMolotok.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Molotok.conf"
end
