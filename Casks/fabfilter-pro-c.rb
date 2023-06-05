cask "fabfilter-pro-c" do
  version "2.16"
  sha256 "49ad087722217d5abcae654def4c3a0bf83f329e52eece4a2aa5d2938f1098d1"

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
