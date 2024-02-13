cask "fabfilter-pro-l" do
  version "2.23"
  sha256 "5b6ad7262c08de3e78ecb44410960e1bb31717329e65fc24e9a6e264856c51d3"

  url "https://www.fabfilter.com/downloads/ffprol#{version.no_dots}.dmg"
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

  # No zap stanza required
end
