cask "fabfilter-pro-l" do
  version "2.11"
  sha256 "a235f6997adfcb7c682355712dda684ad559101c2bee50b0cc2a3d392540c737"

  url "https://download.fabfilter.com/ffprol#{version.no_dots}.dmg"
  name "FabFilter Pro-L"
  desc "Limiter plug-in"
  homepage "https://www.fabfilter.com/products/pro-l-2-limiter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffprol(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-L #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-L.#{version.major}"
end
