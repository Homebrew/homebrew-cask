cask "mac-performance-monitor" do
  version "2.2.1.261"
  sha256 "66be86a8f771b6b3ef32d1e8531085d311f50a5b0ea47a2689b6033f0f1f74c2"

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
