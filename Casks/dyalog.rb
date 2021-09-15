cask "dyalog" do
  version "18.0.40684"
  sha256 "226477ef353999203bd3c40d840480f2de23cac950a38bc150bf5c78a1b9b436"

  url "https://www.dyalog.com/uploads/php/download.dyalog.com/download.php?file=#{version.major_minor}/mac_64_#{version}_unicode.pkg"
  name "Dyalog APL"
  desc "APL-based development environment"
  homepage "https://www.dyalog.com/"

  livecheck do
    url "https://www.dyalog.com/download-zone.htm?p=download"
    regex(%r{href=.*?/mac_64_(\d+(?:\.\d+)*)_unicode\.pkg}i)
  end

  pkg "mac_64_#{version}_unicode.pkg"

  uninstall pkgutil: "com.dyalog.pkg.dyalog#{version.major_minor.no_dots}"

  zap trash: "~/.dyalog"

  caveats do
    free_license "https://www.dyalog.com/download-zone.htm"
    license "https://www.dyalog.com/uploads/documents/Developer_Software_Licence.pdf"
  end
end
