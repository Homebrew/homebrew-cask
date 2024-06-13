cask "picoscope" do
  version "7.1.21.18179"
  sha256 "aaab107b5b02ecab423e636bf5045f32c0931f1beddb6ff71a5f8bd1d851a47f"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version}_TandM_Stable.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]v?(\d+(?:.\d+)+)[._-]T(?:and|n)M[._-]Stable\.pkg}i)
  end

  conflicts_with cask: "picoscope@beta"
  depends_on macos: ">= :high_sierra"

  pkg "PicoScope_#{version}_TandM_Stable.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
