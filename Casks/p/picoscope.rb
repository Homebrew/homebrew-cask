cask "picoscope" do
  version "7.1.13.17054"
  sha256 "f26ddf6056f43cfae6507dd1b761921b3636034ced5c5e3946f4e2bb8c882ccc"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version}_TandM_Stable.pkg"
  name "PicoScope"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscops"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-#{version.major}-stable-for-macos"
    regex(%r{href=.*?/PicoScope[._-]v?(\d+(?:.\d+)+)[._-]T(?:and|n)M[._-]Stable\.pkg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/picoscope-beta"

  pkg "PicoScope_#{version}_TandM_Stable.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]
end
