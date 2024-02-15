cask "fabfilter-one" do
  version "3.39"
  sha256 "76bd8db1eb20f5ea70db34b0aed76336301a893608884145fce86510959d875e"

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
