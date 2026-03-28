cask "tdr-molotok" do
  version "1.0.7"
  sha256 "29b65ea823f5b34f5d0e2d1e556b7f92a9889d07bf6fa20dbb40207ca50c288f"

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
