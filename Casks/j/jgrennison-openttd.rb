cask "jgrennison-openttd" do
  version "0.57.1"
  sha256 "f37942fcfb7a4eea651ef5c7ea8a825f1ecebcc8f847182d920eb0b0447da535"

  url "https://github.com/JGRennison/OpenTTD-patches/releases/download/jgrpp-#{version}/openttd-jgrpp-#{version}-macos-universal.dmg"
  name "JGR's OpenTTD Patchpack"
  desc "Collection of patches applied to OpenTTD"
  homepage "https://github.com/JGRennison/OpenTTD-patches/"

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.jgrpp.savedState",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
