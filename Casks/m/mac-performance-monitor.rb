cask "mac-performance-monitor" do
  version "1.7.0.205"
  sha256 "da9ad510ed95f4bbced4de02e254c81b2d903bc703ba510e3ef2538aa49d1d01"

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
