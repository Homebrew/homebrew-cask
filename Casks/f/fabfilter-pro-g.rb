cask "fabfilter-pro-g" do
  version "1.32"
  sha256 "a70fbe89a7ccd5e97e97f8d23f66c9ea9fb20edbc5c038897acf3af01b4a29aa"

  url "https://www.fabfilter.com/downloads/ffprog#{version.no_dots}.dmg"
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

  # No zap stanza required
end
