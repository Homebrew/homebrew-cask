cask "fabfilter-one" do
  version "3.36"
  sha256 "4740f7447d1056422cfc5b1c1cc0e7ae4e5585185ee21100ee6cb52a32eaab57"

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

  depends_on macos: ">= :sierra"

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.One.#{version.major}"
end
