cask "picoscope@beta" do
  version "7.2.34.10500"
  sha256 "264f84a6b1640c7a87d8c7be0983d5f730b2147bc74081a0fcc4b63a5fb59fc8"

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
