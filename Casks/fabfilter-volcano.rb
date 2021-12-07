cask "fabfilter-volcano" do
  version "3.00"
  sha256 "71ce8e586e7bfb1e7fa8ee50c0cb6bb079ceba3aa740167b81a594220e0e79d8"

  url "https://download.fabfilter.com/ffvolcano#{version.no_dots}.dmg"
  name "FabFilter Volcano"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/volcano-2-powerful-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffvolcano(\d)(\d\d)\.dmg}i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Volcano #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Volcano.#{version.major}",
  ]
end
