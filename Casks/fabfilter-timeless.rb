cask "fabfilter-timeless" do
  version "3.00"
  sha256 "2941e2c0c330c374af58f26b436e24e60f58cb8fbabbd787d4c0e8e6e6514453"

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
