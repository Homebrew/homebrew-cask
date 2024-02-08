cask "tdr-vos-slickeq" do
  version "1.3.8"
  sha256 "532221d58352ff9cf926f184079587b76b42ef623477280bf001955eca21b385"

  url "https://www.tokyodawn.net/labs/SlickEQ/#{version}/TDR%20VOS%20SlickEQ.zip?x24775"
  name "TDR VOS SlickEQ"
  desc "Mixing equalizer"
  homepage "https://www.tokyodawn.net/tdr-vos-slickeq/"

  livecheck do
    url :homepage
    regex(%r{latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "TDR VOS SlickEQ.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AAX",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.AU",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST",
    "com.TokyoDawnLabs.TDRVOSSlickEQ.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR VOS SlickEQ.conf"
end
