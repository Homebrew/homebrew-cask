cask "fabfilter-one" do
  version "3.40"
  sha256 "deccbb529c30cbda942dac088cbc6dadab620eb8792653a1b9e1d37d45a8a1f5"

  url "https://www.fabfilter.com/downloads/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesiser plug-in"
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

  # No zap stanza required
end
