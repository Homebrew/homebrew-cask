cask "fabfilter-timeless" do
  version "2.32"
  sha256 "ee12454b9dd78fe6089ecfd26a3c68c7f75339e71c745d248a21a1a480b51150"

  url "https://download.fabfilter.com/fftimeless#{version.no_dots}.dmg"
  name "FabFilter Timeless"
  desc "Tape delay plug-in"
  homepage "https://www.fabfilter.com/products/timeless-2-stereo-tape-delay-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/fftimeless(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Timeless #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Timeless.#{version.major}",
  ]
end
