cask "fabfilter-pro-q" do
  version "3.23"
  sha256 "35975571e0ee3e72a3c14d4c02d58999ead5c9ce1a5dc248f9874442b994bc67"

  url "https://www.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
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

  # No zap stanza required
end
