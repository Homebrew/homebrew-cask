cask "fabfilter-pro-c" do
  version "2.15"
  sha256 "7fd3f7103e5114afb641a2909a3cbdadfc2bc3dd43cdb9a594b57b7aa7a2f144"

  url "https://download.fabfilter.com/ffproc#{version.no_dots}.dmg"
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
end
