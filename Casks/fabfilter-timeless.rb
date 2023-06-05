cask "fabfilter-timeless" do
  version "3.04"
  sha256 "3401dadd79d577f36fbc34964ad8f9e90dd511872e648a0720c1e0fc0080c490"

  url "https://download.fabfilter.com/fftimeless#{version.no_dots}.dmg"
  name "FabFilter Timeless"
  desc "Tape delay plug-in"
  homepage "https://www.fabfilter.com/products/timeless-2-stereo-tape-delay-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/fftimeless(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Timeless #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Timeless.#{version.major}"
end
