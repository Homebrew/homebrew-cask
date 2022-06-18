cask "fabfilter-saturn" do
  version "2.06"
  sha256 "11d3f9e92a88520e253b831be1c788894836d16c6b843fdc192d5bde082c4fcd"

  url "https://download.fabfilter.com/ffsaturn#{version.no_dots}.dmg"
  name "FabFilter Saturn"
  desc "Multiband distorsion/saturation plug-in"
  homepage "https://www.fabfilter.com/products/saturn-2-multiband-distortion-saturation-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffsaturn(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Saturn #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Saturn.#{version.major}"
end
