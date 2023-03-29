cask "fabfilter-pro-g" do
  version "1.30"
  sha256 "01423ff6e44f317fc36584ec894f29af9ece55bdcf1db86d93c4687dac81b907"

  url "https://download.fabfilter.com/ffprog#{version.no_dots}.dmg"
  name "FabFilter Pro-G"
  desc "Gate/expander plug-in"
  homepage "https://www.fabfilter.com/products/pro-g-gate-expander-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffprog(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-G #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-G.#{version.major}"
end
