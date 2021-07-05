cask "fabfilter-simplon" do
  version "1.32"
  sha256 "32514c293732f7b2ef139f1a597625c5d4805adb0179237758844ee1b52b78ae"

  url "https://download.fabfilter.com/ffsimplon#{version.no_dots}.dmg"
  name "FabFilter Simplon"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/simplon-basic-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffsimplon(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Simplon #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Simplon.#{version.major}",
  ]
end
