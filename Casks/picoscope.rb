cask "picoscope" do
  version "7.1.2.15463"
  sha256 "2c0dbeb737ee0f94eb4dad296da9de808122f468bf2410fceab466a7aa80a34d"

  url "https://www.picotech.com/download/software/sr/PicoScope_#{version}_TnM_Stable.pkg"
  name "PicoScope"
  desc "Test & Measurement Software for Picotech Oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/_lightbox/picoscope-7-stable-for-macos"
    regex(%r{href=.*?/PicoScope_(\d+(?:.\d+)*).*\.pkg}i)
  end

  #  app "PicoScope 7 T&M.app" -> "Error: It seems your app is not found in
  #  /opt/homebrew/Casksroom/..."
  pkg "PicoScope_#{version}_TnM_Stable.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnm"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope#{version.major}.savedState",
  ]
end
