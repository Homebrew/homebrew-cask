cask "fabfilter-timeless" do
  version "3.07"
  sha256 "6f53095de1184105111cfa9c9ab384daca3014ec84695a3b046dc1cf8eca6635"

  url "https://www.fabfilter.com/downloads/fftimeless#{version.no_dots}.dmg"
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

  # No zap stanza required
end
