cask "tdr-prism" do
  version "1.1.0"
  sha256 "7006f151e4a7abade90ba9d5cad0e372b012d718ec0480632b7a9399e874cae7"

  url "https://www.tokyodawn.net/labs/Prism/#{version}/TDR%20Prism.zip"
  name "TDR Prism"
  desc "Frequency analyzer"
  homepage "https://www.tokyodawn.net/tdr-prism/"

  livecheck do
    url :homepage
    regex(%r{href=.*?Prism/v?(\d+(?:\.\d+)+)/TDR(%20|\s)Prism\.zip}i)
  end

  no_autobump! because: :requires_manual_review

  pkg "TDR Prism.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRPrism.AAX",
    "com.TokyoDawnLabs.TDRPrism.AU",
    "com.TokyoDawnLabs.TDRPrism.VST",
    "com.TokyoDawnLabs.TDRPrism.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Prism.conf"
end
