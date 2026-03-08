cask "tdr-vos-slickeq" do
  version "1.3.9"
  sha256 "9146a0e145680965c54296c68996a5982bd0e164b6fbfd767c8b26d32f8e70fa"

  url "https://www.tokyodawn.net/labs/SlickEQ/#{version}/TDR%20VOS%20SlickEQ.zip?x24775"
  name "TDR VOS SlickEQ"
  desc "Mixing equaliser"
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
