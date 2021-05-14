cask "fabfilter-pro-g" do
  version "1.26"
  sha256 "8fee87a83355349293f7e5cc6066bb21653ee6045e77f45d5429fdc218f1ccc3"

  url "https://download.fabfilter.com/ffprog#{version.no_dots}.dmg"
  name "FabFilter Pro-G"
  desc "Gate/expander plug-in"
  homepage "https://www.fabfilter.com/products/pro-g-gate-expander-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffprog(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-G #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-G.#{version.major}",
  ]
end
