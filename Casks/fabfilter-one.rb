cask "fabfilter-one" do
  version "3.34"
  sha256 "6f057cf3b3ad99e0dd1eb370d4ca529a706766e90fbdaee5ac354f32902f24af"

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
