cask "mac-performance-monitor" do
  version "2.5.0.297"
  sha256 "67cb6473606b2f89f622ecc15bb6ab402c5bdad6b9e0d787f5348a211a5299db"

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
