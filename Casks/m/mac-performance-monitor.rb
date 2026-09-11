cask "mac-performance-monitor" do
  version "2.1.0.236"
  sha256 "04e88fb0a8269495f9bbd51ecc1f7c2363fcec47d4912c8e05798165c3af9ea1"

  url "https://github.com/Zesty0wl/mac-performance-monitor/releases/download/v#{version}/MacPerformanceMonitor.pkg"
  name "Mac Performance Monitor"
  desc "Menu bar performance monitor with recorded history and analytics"
  homepage "https://macperformancemonitor.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  pkg "MacPerformanceMonitor.pkg"

  uninstall launchctl: "uk.co.bzwrd.macperfmonitor.helper",
            quit:      "uk.co.bzwrd.macperfmonitor",
            pkgutil:   "uk.co.bzwrd.macperfmonitor"

  zap trash: [
    "~/Library/Application Support/MacPerformanceMonitor",
    "~/Library/Caches/uk.co.bzwrd.macperfmonitor",
    "~/Library/HTTPStorages/uk.co.bzwrd.macperfmonitor",
    "~/Library/Preferences/uk.co.bzwrd.macperfmonitor.plist",
    "~/Library/Saved Application State/uk.co.bzwrd.macperfmonitor.savedState",
  ]
end
