cask "fabfilter-twin" do
  version "2.33"
  sha256 "09b4f96757b8c57f694bf0d0c1aa3ca4805b7d66246dc1d030d70bb1c23f3b41"

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
