cask "tdr-molotok" do
  version "1.0.6"
  sha256 "1941adfb18bef4859fc76d499321fb87334b7996c3e24c1be1cc32f881518151"

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
