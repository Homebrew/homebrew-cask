cask "fabfilter-pro-q" do
  version "3.21"
  sha256 "d208c9d0dbfebafbe64faf743e9b59398f4d6d67859e3a69f43341046aff0cdc"

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

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.#{version.major}"
end
