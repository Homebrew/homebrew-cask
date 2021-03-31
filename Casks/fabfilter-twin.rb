cask "fabfilter-twin" do
  version "2.32"
  sha256 "8e583c4fe0bd718f4b1265181129f8bda65f74ba48487b81fb7756e602142623"

  url "https://download.fabfilter.com/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesizer plug-in"
  homepage "https://www.fabfilter.com/products/twin-2-powerful-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/fftwin(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Twin.#{version.major}",
  ]
end
