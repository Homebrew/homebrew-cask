cask "picoscope@beta" do
  version "7.1.53.5775"
  sha256 "a2de7df71f269fef917cf98b356d42583b3cdfd6f919b5a5621ee8bcefe110d2"

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
