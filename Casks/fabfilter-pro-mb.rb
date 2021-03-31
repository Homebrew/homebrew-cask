cask "fabfilter-pro-mb" do
  version "1.23"
  sha256 "6b996535bcee29f7413c422556389d7f423352c606af620580242fa304c57cc4"

  url "https://download.fabfilter.com/ffpromb#{version.no_dots}.dmg"
  name "FabFilter Pro-MB"
  desc "Multiband compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-mb-multiband-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/ffpromb(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-MB.#{version.major}",
  ]
end
