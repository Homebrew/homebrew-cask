cask "tdr-vos-slickeq" do
  version "1.3.9"
  sha256 "637dea05dcc7ff75c91cdeedc2456134be12e09b2b2b8ce6c3ca456fb23c0ce8"

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
