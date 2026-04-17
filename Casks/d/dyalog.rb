cask "dyalog" do
  arch arm: "arm"

  on_arm do
    version "20.0.52760"
    sha256 "44813e8814427a0612c8f4f954a9ffb5f83f25ca3eda9eb048fc042a056d7e52"

    livecheck do
      url "https://www.dyalog.com/download-zone.htm?p=download"
      regex(%r{href=.*?/mac#{arch}_64_(\d+(?:\.\d+)+)_unicode\.pkg}i)
    end
  end
  on_intel do
    version "19.0.50027"
    sha256 "3f033230380f15cff1d2d6bff2e9d6c74057320c81da1435d41ba2a88b2a1b03"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://www.dyalog.com/uploads/php/download.dyalog.com/download.php?file=#{version.major_minor}/mac#{arch}_64_#{version}_unicode.pkg"
  name "Dyalog APL"
  desc "APL-based development environment"
  homepage "https://www.dyalog.com/"

  pkg "mac#{arch}_64_#{version}_unicode.pkg"

  uninstall pkgutil: "com.dyalog.pkg.dyalog#{version.major_minor.no_dots}"

  zap trash: "~/.dyalog"

  caveats do
    free_license "https://www.dyalog.com/download-zone.htm"
    license "https://www.dyalog.com/uploads/documents/Developer_Software_Licence.pdf"
  end
end
