cask "fabfilter-volcano" do
  version "2.32"
  sha256 "74caf46fd7549231709fdf6220f3c8840c0a7f781b0a14f0b96b0051d5d2e8ae"

  url "https://download.fabfilter.com/ffvolcano#{version.no_dots}.dmg"
  name "FabFilter Volcano"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/volcano-2-powerful-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffvolcano(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Volcano #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Volcano.#{version.major}",
  ]
end
