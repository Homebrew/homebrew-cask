cask "fabfilter-micro" do
  version "1.22"
  sha256 "883b14ae12459cdc75a8dc904f891c1ec94c484541a538e78119ead83f7cc00a"

  url "https://download.fabfilter.com/ffmicro#{version.no_dots}.dmg"
  name "FabFilter Micro"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/micro-mini-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffmicro(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Micro #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Micro.#{version.major}",
  ]
end
