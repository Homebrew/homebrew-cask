cask "tdr-prism" do
  version "1.1.1"
  sha256 "10f2ce6fd6dda58ac924be2596e5641d8bb3f04687df9983d97a0ab28b0b2228"

  url "https://www.tokyodawn.net/labs/Prism/#{version}/TDR%20Prism.zip"
  name "TDR Prism"
  desc "Frequency analyzer"
  homepage "https://www.tokyodawn.net/tdr-prism/"

  livecheck do
    url :homepage
    regex(%r{href=.*?Prism/v?(\d+(?:\.\d+)+)/TDR(%20|\s)Prism\.zip}i)
  end

  pkg "TDR Prism.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRPrism.AAX",
    "com.TokyoDawnLabs.TDRPrism.AU",
    "com.TokyoDawnLabs.TDRPrism.VST",
    "com.TokyoDawnLabs.TDRPrism.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Prism.conf"
end
