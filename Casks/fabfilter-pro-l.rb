cask "fabfilter-pro-l" do
  version "2.20"
  sha256 "7ee1bcda38dedc78371dfe44250a9b5cb48e1aba0ea7eaaa3ff85a22b14695bc"

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

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-L #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-L.#{version.major}"
end
