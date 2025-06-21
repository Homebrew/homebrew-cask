cask "picoscope@beta" do
  version "7.1.56.6040"
  sha256 "2c9dd4d351f2e8e91970c5f03d52edd108a42436ed81bb74bf405b51d4be3997"

  url "https://www.picotech.com/download/software/beta/PicoScope_#{version.major}_TandM_Early_Access_#{version}.pkg"
  name "PicoScope beta"
  desc "Test and measurement oscilloscope software for PicoScope oscilloscopes"
  homepage "https://www.picotech.com/"

  livecheck do
    url "https://www.picotech.com/downloads/picoscope#{version.major}-early-access"
    regex(/href=.*?PicoScope[._-]#{version.major}.*?Access[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  no_autobump! because: :requires_manual_review

  conflicts_with cask: "picoscope"

  pkg "PicoScope_#{version.major}_TandM_Early_Access_#{version}.pkg"

  uninstall pkgutil: "com.picotech.picoscope#{version.major}tnmbeta"

  zap trash: [
    "~/.local/share/Pico Technology",
    "~/Library/Saved Application State/com.picotech.picoscope7tnmbeta.savedState",
  ]
end
