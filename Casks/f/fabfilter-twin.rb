cask "fabfilter-twin" do
  version "3.04"
  sha256 "a9cef4350c733fa0059648e15877f032b7560f3edce3fe80d59a5e7981708a88"

  url "https://www.fabfilter.com/downloads/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesiser plug-in"
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
