cask "tdr-prism" do
  version "1.1.0"
  sha256 "fb73b5fed26a4a11cc0213dd91fea965e5ba1eac48ab813c7adab3508ddcad7c"

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
