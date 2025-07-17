cask "picoscope@beta" do
  version "7.1.58.6335"
  sha256 "4039275fc877e258bfc50f3dee577a709a11da87432d8bf8a6b91f032e76c281"

  url "https://www.picotech.com/download/software/beta/PicoScope_#{version.major}_TandM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/picoscope#{version.major}-early-access"
    regex(/href=.*?PicoScope[._-]#{version.major}.*?Access[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask: "picoscope"

  pkg "PicoScope_#{version.major}_TandM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope7tnmbeta.savedState",
  ]
end
