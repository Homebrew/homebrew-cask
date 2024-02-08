cask "picoscope" do
  version "7.1.19.17687"
  sha256 "e3b298207fd4ea046491a2c0b34bb5a6a9d5f291f83dc2690bcecbfa441ab828"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version.major}_TandM_#{version}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]#{version.major}[._-]T(?:and|n)M[._-]v?(\d+(?:.\d+)+)\.pkg}i)
  end

  conflicts_with cask: "picoscope-beta"
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
