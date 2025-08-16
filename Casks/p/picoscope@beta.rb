cask "picoscope@beta" do
  version "7.2.3.6884"
  sha256 "52a61fcd36c39c1c7c04dd5028220f22dffaddb3565bc25f65f5a6c8e5287097"

  url "https://www.picotech.com/download/software/beta/PicoScope_#{version.major}_TandM_Early_Access_#{version}.x64.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/picoscope#{version.major}-early-access"
    regex(/href=.*?PicoScope[._-][^"' >]*?[._-]v?(#{version.major}(?:\.\d+)+)[^"' >]*?\.pkg/i)
  end

  conflicts_with cask: "picoscope"

  pkg "PicoScope_#{version.major}_TandM_Early_Access_#{version}.x64.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope7tnmbeta.savedState",
  ]
end
