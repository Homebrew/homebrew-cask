cask "fabfilter-volcano" do
  version "3.04"
  sha256 "60ab4565fbff992fb7ef5f9fb5fba799ca2d7efa99591848777278bd90e45cbc"

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
