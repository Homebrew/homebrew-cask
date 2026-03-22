cask "jgrennison-openttd" do
  version "0.71.1"
  sha256 "8a9d0c30db520eb94dfa62d6d9f0cb9582b7db5ca977bec8179a6e36d3d1dd9d"

  url "https://github.com/JGRennison/OpenTTD-patches/releases/download/jgrpp-#{version}/openttd-jgrpp-#{version}-macos-universal.dmg"
  name "JGR's OpenTTD Patchpack"
  desc "Collection of patches applied to OpenTTD"
  homepage "https://github.com/JGRennison/OpenTTD-patches/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.jgrpp.savedState",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
