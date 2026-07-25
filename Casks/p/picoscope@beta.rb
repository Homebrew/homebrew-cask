cask "picoscope@beta" do
  version "7.2.26.9659"
  sha256 "d4fd7aa129fbe7a140abbd3c24a3192e8ce439d500fdade53a0a5ccf3889ca0c"

  url "https://www.picotech.com/download/software/beta/PicoScope_#{version.major}_TandM_Early_Access_#{version}.x64.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/picoscope#{version.major}-early-access"
    regex(/href=.*?PicoScope[._-][^"' >]*?[._-]v?(#{version.major}(?:\.\d+)+)[^"' >]*?\.pkg/i)
  end

  conflicts_with cask: "picoscope"
  depends_on :macos

  pkg "PicoScope_#{version.major}_TandM_Early_Access_#{version}.x64.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope7tnmbeta.savedState",
  ]
end
