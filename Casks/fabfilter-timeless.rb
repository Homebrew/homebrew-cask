cask "fabfilter-timeless" do
  version "2.32"
  sha256 "8e583c4fe0bd718f4b1265181129f8bda65f74ba48487b81fb7756e602142623"

  url "https://download.fabfilter.com/fftimeless#{version.no_dots}.dmg"
  name "FabFilter Timeless"
  desc "Tape delay plug-in"
  homepage "https://www.fabfilter.com/products/timeless-2-stereo-tape-delay-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".+/fftimeless(\d)(\d\d).dmg"}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "#{name[0]} #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Timeless.#{version.major}",
  ]
end
