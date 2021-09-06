cask "fabfilter-pro-ds" do
  version "1.16"
  sha256 "d3810ccca698a8e9da44a72d69cc2035d43f54491b9b4ba4aabe358aae4eaded"

  url "https://download.fabfilter.com/ffprods#{version.no_dots}.dmg"
  name "FabFilter Pro-DS"
  desc "De-esser plug-in"
  homepage "https://www.fabfilter.com/products/pro-ds-de-esser-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffprods(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-DS #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-DS.#{version.major}",
  ]
end
