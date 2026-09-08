cask "chromium" do
  arch arm: "Mac_Arm", intel: "Mac"

  version :latest
  sha256 :no_check

  url "https://download-chromium.appspot.com/dl/#{arch}?type=snapshots"
  name "Chromium"
  desc "Free and open-source web browser"
  homepage "https://www.chromium.org/Home"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "ungoogled-chromium"
  depends_on macos: :monterey

  app "chrome-mac/Chromium.app"
  command_wrapper "chromium",
                  executable: "#{appdir}/Chromium.app/Contents/MacOS/Chromium"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Application Support/CrashReporter/Chromium_*.plist",
    "~/Library/Caches/Chromium",
    "~/Library/Logs/DiagnosticReports/Chromium-*.ips",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
