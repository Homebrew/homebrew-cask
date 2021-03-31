cask "fabfilter-pro-l" do
  version "2.07"
  sha256 "2ec8204656f16d7cfd90d9a309266decca898e19202492b2df032428a7a5fd01"

  url "https://download.fabfilter.com/ffprol#{version.no_dots}.dmg"
  name "FabFilter Pro-L"
  desc "Limiter plug-in"
  homepage "https://www.fabfilter.com/products/pro-l-2-limiter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffprol(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-L #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-L.#{version.major}",
  ]
end
