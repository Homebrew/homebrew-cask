cask "tdr-prism" do
  version "1.1.2"
  sha256 "710b982abaedc86499f7e2f93d7825dca3bb97e83151339f8d6d46ebfd5d4ffc"

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
