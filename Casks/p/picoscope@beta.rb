cask "picoscope@beta" do
  version "7.1.50.5366"
  sha256 "834bcfebd45fba76263e308a675f60deb7b627f30f2f6becd86c43671a9aa961"

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
