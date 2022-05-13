cask "fabfilter-twin" do
  version "2.34"
  sha256 "5f30c1a6a3e16aed28b6783cabd987e6472def74a3c1ff5b52cd4d4fa61a40a2"

  url "https://download.fabfilter.com/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesizer plug-in"
  homepage "https://www.fabfilter.com/products/twin-2-powerful-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/fftwin(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Twin.#{version.major}"
end
