cask "fabfilter-pro-c" do
  version "2.17"
  sha256 "8521f0884d9204d7931a6d6ffd2ebb82cacbf80f6f1373d7c19bc03ec5c34a5f"

  url "https://www.fabfilter.com/downloads/ffproc#{version.no_dots}.dmg"
  name "FabFilter Pro-C"
  desc "Compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-c-2-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffproc(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-C #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-C.#{version.major}"

  # No zap stanza required
end
