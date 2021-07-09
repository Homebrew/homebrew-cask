cask "jgrennison-openttd" do
  version "0.42.0"
  sha256 "90b767f30f6648ff82a84ae6a255b0cb54810eb406fd4bafa94f4118850ccee2"

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
