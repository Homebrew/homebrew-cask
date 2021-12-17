cask "realforce" do
  version "2.1.10"
  sha256 "2f1b468d5b07c994e324be9564b825d0f4582523dc1bf9eae4fb3c5def9b0934"

  url "https://www.realforce.co.jp/support/download/software/mac/files/Install%20REALFORCE%20Software_#{version.dots_to_hyphens}.pkg"
  name "REALFORCE for Mac"
  desc "Software for Realforce keyboards and mice"
  homepage "https://www.realforce.co.jp/"

  livecheck do
    url "https://www.realforce.co.jp/support/download/keyboard_mac.html"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Install\s*REALFORCE\s*Software_(\d+(?:-\d+)+)\.pkg}i, 1]
      v.tr("-", ".")
    end
  end

  pkg "Install REALFORCE Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.topre.installpkg.realforce"
end
