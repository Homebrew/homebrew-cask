cask "fabfilter-twin" do
  version "3.01"
  sha256 "01a1f09125fe0c02064e6ed6abe1dbb5f4d6a0adf38f711d223e399975b74832"

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

  depends_on macos: ">= :sierra"

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Twin.#{version.major}"
end
