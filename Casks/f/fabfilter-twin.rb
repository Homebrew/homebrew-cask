cask "fabfilter-twin" do
  version "3.10"
  sha256 "ea9adcb334f00571b7c09da8272a395631e227466ffd1db8795062ca7298b1c0"

  url "https://cdn-b.fabfilter.com/downloads/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/twin-3-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Twin.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Twin.*"

  zap :not_required
end
