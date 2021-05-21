cask "jgrennison-openttd" do
  version "0.41.2"
  sha256 "8dfc314c1eb14f37578584e14d165fd556466e23c4e414cfa405742ad8ce09bc"

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
