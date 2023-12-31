cask "fabfilter-one" do
  version "3.37"
  sha256 "4059594580e365237ded16a213d8d549cbb01c4b8bad80895c61f44bcff7eb68"

  url "https://www.fabfilter.com/downloads/ffone#{version.no_dots}.dmg"
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

  # No zap stanza required
end
