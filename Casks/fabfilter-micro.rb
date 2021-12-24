cask "fabfilter-micro" do
  version "1.23"
  sha256 "914fbec32ef3c81bfa45fc6eaf73e04a5f66632098ab270ff74e4dadd004349c"

  url "https://download.fabfilter.com/ffmicro#{version.no_dots}.dmg"
  name "FabFilter Micro"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/micro-mini-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffmicro(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Micro #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Micro.#{version.major}"
end
