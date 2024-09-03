cask "dyalog" do
  version "19.0.50027"
  sha256 "3f033230380f15cff1d2d6bff2e9d6c74057320c81da1435d41ba2a88b2a1b03"

  url "https://www.dyalog.com/uploads/php/download.dyalog.com/download.php?file=#{version.major_minor}/mac_64_#{version}_unicode.pkg"
  name "Dyalog APL"
  desc "APL-based development environment"
  homepage "https://www.dyalog.com/"

  livecheck do
    url "https://www.dyalog.com/download-zone.htm?p=download"
    regex(%r{href=.*?/mac_64_(\d+(?:\.\d+)+)_unicode\.pkg}i)
  end

  pkg "mac_64_#{version}_unicode.pkg"

  uninstall pkgutil: "com.dyalog.pkg.dyalog#{version.major_minor.no_dots}"

  zap trash: "~/.dyalog"

  caveats do
    free_license "https://www.dyalog.com/download-zone.htm"
    license "https://www.dyalog.com/uploads/documents/Developer_Software_Licence.pdf"
  end
end
