cask "tdr-molotok" do
  version "1.0.7"
  sha256 "9e523f7eabd4dc17a515228dd75200303a43361071c64a904d76ef32de5d29bf"

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
