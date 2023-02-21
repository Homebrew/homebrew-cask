cask "fabfilter-twin" do
  version "3.00"
  sha256 "a97c76ed24938939f99a89f3172a021c8713cde422c4fea0a2973baa170cb515"

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
