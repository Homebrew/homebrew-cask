cask "picoscope" do
  version "7.1.50.5594"
  sha256 "525abcf7e09e82adcbdfd9108f4e4ec7f8dbd954027821ef7c4f23ac4444a6c9"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version.major}_TandM_#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]#{version.major}[._-]T(?:and|n)M[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  conflicts_with cask: "picoscope@beta"
  depends_on macos: ">= :high_sierra"

  pkg "PicoScope_#{version.major}_TandM_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
