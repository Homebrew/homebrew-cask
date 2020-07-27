cask "realforce" do
  version "1.0.3"
  sha256 "0929016237d8992e9248e624761a4fffdebd408a0c061c54395668fa54dfdbf7"

  url "https://www.realforce.co.jp/support/download/Install%20REALFORCE%20Software_#{version.dots_to_hyphens}.pkg"
  appcast "https://www.realforce.co.jp/support/download/index.html"
  name "REALFORCE for Mac"
  homepage "https://www.realforce.co.jp/support/download/index.html"

  pkg "Install REALFORCE Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.topre.installpkg.realforce"
end
