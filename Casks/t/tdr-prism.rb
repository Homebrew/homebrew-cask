cask "tdr-prism" do
  version "1.1.4"
  sha256 "a0bc1cdac9c5474941f93da4d96d87bd077d1fa0427ee201c844b94c738c318c"

  url "https://www.tokyodawn.net/labs/Prism/#{version}/TDR%20Prism.zip"
  name "TDR Prism"
  desc "Frequency analyzer"
  homepage "https://www.tokyodawn.net/tdr-prism/"

  livecheck do
    url :homepage
    regex(%r{href=.*?Prism/v?(\d+(?:\.\d+)+)/TDR(%20|\s)Prism\.zip}i)
  end

  depends_on :macos

  pkg "TDR Prism.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRPrism.AAX",
    "com.TokyoDawnLabs.TDRPrism.AU",
    "com.TokyoDawnLabs.TDRPrism.VST",
    "com.TokyoDawnLabs.TDRPrism.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Prism.conf"
end
