cask "fabfilter-pro-r" do
  version "2.02"
  sha256 "2575b95112ac36bec9c443c1b415fd36c1bef352f95c179902902eabe0b71983"

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
