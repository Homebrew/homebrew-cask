cask "fabfilter-twin" do
  version "3.03"
  sha256 "1647061612315c6ba141b112bd268cf7a3c839b1b33cf280a31b24ae0cf9c7fc"

  url "https://www.fabfilter.com/downloads/fftwin#{version.no_dots}.dmg"
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

  # No zap stanza required
end
