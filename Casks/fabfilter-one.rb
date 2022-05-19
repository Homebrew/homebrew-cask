cask "fabfilter-one" do
  version "3.35"
  sha256 "1542ce5f392dc31123f0163fe825d5e6fec38be310947d3e4d2af4262f2641c4"

  url "https://download.fabfilter.com/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesizer plug-in"
  homepage "https://www.fabfilter.com/products/volcano-2-powerful-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffone(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.One.#{version.major}"
end
