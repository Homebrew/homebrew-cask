cask "fabfilter-pro-q" do
  version "3.20"
  sha256 "31619d5e1d698b2e54f2b2faffa98e3f22d7c5dcc5a941ddccd89357905fe0ff"

  url "https://download.fabfilter.com/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equalizer plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffproq(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.#{version.major}"
end
