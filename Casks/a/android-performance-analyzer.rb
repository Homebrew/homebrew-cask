cask "android-performance-analyzer" do
  version "0.9.0"
  sha256 "5b9c5935277eb6d12992d0c35d20114614025a501c9462f1459e5217567557bc"

  url "https://dl.google.com/android/apa/install/v#{version}/android-performance-analyzer-mac.dmg"
  name "Android Performance Analyzer"
  desc "Toolchain for profiling apps and games"
  homepage "https://developer.android.com/android-performance-analyzer"

  livecheck do
    url :homepage
    regex(%r{/v?(\d+(?:\.\d+)+)/android-performance-analyzer-mac\.dmg}i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Android Performance Analyzer.app"

  uninstall quit: "com.google.android.performance.analyzer"

  zap trash: [
    "~/Library/Application Support/Google/AndroidPerformanceAnalyzer",
    "~/Library/Caches/Google/AndroidPerformanceAnalyzer",
    "~/Library/Logs/Google/AndroidPerformanceAnalyzer",
    "~/Library/Preferences/com.google.android.performance.analyzer.plist",
    "~/Library/Saved Application State/com.google.android.performance.analyzer.savedState",
  ]
end
