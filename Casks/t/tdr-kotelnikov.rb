cask "tdr-kotelnikov" do
  version "1.6.7"
  sha256 "9dbe66022dee60b2f74335b47b703a00d239bdfa9fac60c6336f4d7e1133e546"

  url "https://www.tokyodawn.net/labs/Kotelnikov/#{version}/TDR%20Kotelnikov.zip?x24775"
  name "TDR Kotelnikov"
  desc "Wideband dynamics processor"
  homepage "https://www.tokyodawn.net/tdr-kotelnikov/"

  livecheck do
    url :homepage
    regex(%r{latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "TDR Kotelnikov.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRKotelnikov.AAX",
    "com.TokyoDawnLabs.TDRKotelnikov.AU",
    "com.TokyoDawnLabs.TDRKotelnikov.VST",
    "com.TokyoDawnLabs.TDRKotelnikov.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Kotelnikov.conf"
end
