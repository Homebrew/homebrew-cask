cask "fabfilter-saturn" do
  version "2.03"
  sha256 "b4a86cc8e006adad410c9c7204b958b4cb1670c64a9eb5ab88f2fd788990541c"

  url "https://download.fabfilter.com/ffsaturn#{version.no_dots}.dmg"
  name "FabFilter Saturn"
  desc "Multiband distorsion/saturation plug-in"
  homepage "https://www.fabfilter.com/products/saturn-2-multiband-distortion-saturation-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/ffsaturn(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Saturn #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Saturn.#{version.major}",
  ]
end
