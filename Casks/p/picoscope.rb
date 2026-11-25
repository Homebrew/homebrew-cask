cask "picoscope" do
  arch arm: "ARM64", intel: "x64"

  version "7.2.30.10560"
  sha256 arm:   "21767fdf111f55fa33abb85c560efbcdd4c0fe3e5b08a0f6469261a2ea3a128e",
         intel: "4799600054ab33c86d8478413b2c148ee2a3bbd74f107c8e266f2b28d203f09f"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version.major}_TandM_#{version}.#{arch}.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]#{version.major}[._-]T(?:and|n)M[._-]v?(\d+(?:\.\d+)+)(?:[._-]x64)?\.pkg}i)
  end

  conflicts_with cask: "picoscope@beta"
  depends_on :macos

  pkg "PicoScope_#{version.major}_TandM_#{version}.#{arch}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]
end
