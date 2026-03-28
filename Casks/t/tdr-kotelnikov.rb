cask "tdr-kotelnikov" do
  version "1.6.7"
  sha256 "59e580a260fb66db6f608b92434c9cf9e426eb83734995b5d4633930783389da"

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
