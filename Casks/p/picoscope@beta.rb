cask "picoscope@beta" do
  version "7.0.117.13870"
  sha256 "9922f78a9ceb9c49239ac006cea023952b9baa9557908103e808f1821b876d32"

  url "https://oem.picotech.com/software/p#{version.major}beta/PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://oem.picotech.com/p#{version.major}beta/download/"
    regex(%r{href=.*?/picoscope[._-]#{version.major}.*?access[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  conflicts_with cask: "picoscope"

  pkg "PicoScope_#{version.major}_TnM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope7tnmbeta.savedState",
  ]
end
