cask "fabfilter-pro-r" do
  version "2.03"
  sha256 "c04de2bda6f421df6a34be56fc4e59fd4991298ab4001ca742517f464ce40099"

  url "https://www.fabfilter.com/downloads/ffpror#{version.no_dots}.dmg"
  name "FabFilter Pro-R"
  desc "Reverb plug-in"
  homepage "https://www.fabfilter.com/products/pro-r-reverb-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffpror(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-R #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-R.#{version.major}"

  # No zap stanza required
end
