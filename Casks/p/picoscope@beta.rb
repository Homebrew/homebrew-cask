cask "picoscope@beta" do
  version "7.2.24.9442"
  sha256 "c85cbb99300b4d92f09e1a5c7ecd42033ab757c5a6203263fc38eec036fcf5be"

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
