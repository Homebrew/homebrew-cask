cask "picoscope" do
  version "7.1.2.15463"
  sha256 "2c0dbeb737ee0f94eb4dad296da9de808122f468bf2410fceab466a7aa80a34d"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version}_TnM_Stable.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]v?(\d+(?:.\d+)+)[._-]TnM[._-]Stable\.pkg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/picoscope-beta"

  pkg "PicoScope_#{version}_TnM_Stable.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]
end
