cask "mac-performance-monitor" do
  version "2.8.1.316"
  sha256 "a335f63837406d71819b6269b0eaf0fc4d6f2bdbf078c4fa832f5384ada1e1e5"

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
