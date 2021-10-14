cask "jgrennison-openttd" do
  version "0.43.1"
  sha256 "35f45869d81a87e24ca41872fc848c1542bc9d8cf2c7237a94cab6d0d59277cc"

  url "https://github.com/JGRennison/OpenTTD-patches/releases/download/jgrpp-#{version}/openttd-jgrpp-#{version}-macos-universal.dmg"
  name "JGR's OpenTTD Patchpack"
  desc "Collection of patches applied to OpenTTD"
  homepage "https://github.com/JGRennison/OpenTTD-patches/"

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
    "~/Library/Saved Application State/org.openttd.openttd.jgrpp.savedState",
  ]
end
