cask "dyalog-apl" do
  version "18.0.39712"
  sha256 "914699078de8139701f443e6df19b491781b514d11f150c2827644a93409b8bd"

  url "https://www.dyalog.com/uploads/php/download.dyalog.com/download.php?file=#{version.major}.#{version.minor}/mac_64_#{version}_unicode.pkg"
  name "Dyalog APL"
  desc "The tool of thought for software solutions"
  homepage "https://www.dyalog.com/"

  app "Dyalog-#{version.major}.#{version.minor}.app"
  pkg "mac_64_#{version}_unicode.pkg"

  uninstall pkgutil: "com.dyalog.pkg.dyalog#{version.major}#{version.minor}"

  zap trash: [
    "~/.dyalog",
  ]

  caveats do
    free_license "https://www.dyalog.com/download-zone.htm"
    license "https://www.dyalog.com/uploads/documents/Developer_Software_Licence.pdf"
  end
end
