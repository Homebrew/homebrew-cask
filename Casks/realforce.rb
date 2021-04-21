cask "realforce" do
  version "2.0.0"
  sha256 "b8ea9d042a8b3e40c34159de96da0d31513bc447f83898ad72d93e1d311cd4aa"

  url "https://www.realforce.co.jp/support/download/software/mac/files/Install%20REALFORCE%20Software_#{version.dots_to_hyphens}.pkg"
  name "REALFORCE for Mac"
  homepage "https://www.realforce.co.jp/"

  livecheck do
    url "https://www.realforce.co.jp/support/download/keyboard_mac.html"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Install\s*REALFORCE\s*Software_(\d+(?:-\d+)*)\.pkg}i, 1]
      v.tr("-", ".")
    end
  end

  pkg "Install REALFORCE Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.topre.installpkg.realforce"
end
