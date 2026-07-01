cask "picoscope" do
  version "7.2.24.9658"
  sha256 "9707f12038eca1ece2e49601479bfa5937be4fb372bf112e10c964f08591a7c0"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version.major}_TandM_#{version}.x64.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]#{version.major}[._-]T(?:and|n)M[._-]v?(\d+(?:\.\d+)+)(?:[._-]x64)?\.pkg}i)
  end

  conflicts_with cask: "picoscope@beta"
  depends_on :macos

  pkg "PicoScope_#{version.major}_TandM_#{version}.x64.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
