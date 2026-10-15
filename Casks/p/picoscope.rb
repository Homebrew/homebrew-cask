cask "picoscope" do
  version "7.2.30.10460"
  sha256 "4d3fd9d0b70989df0aec4a95df4157a94407c51f4dd9ca6d54ab7b47431cb861"

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
