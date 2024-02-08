cask "fabfilter-volcano" do
  version "3.05"
  sha256 "517547f5a81a4fdc69838b65ec9ddaf5c4b7c899d1731fa3ce2acfe9d38aa2af"

  url "https://www.fabfilter.com/downloads/ffvolcano#{version.no_dots}.dmg"
  name "FabFilter Volcano"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/volcano-2-powerful-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffvolcano(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Volcano #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Volcano.#{version.major}"

  # No zap stanza required
end
