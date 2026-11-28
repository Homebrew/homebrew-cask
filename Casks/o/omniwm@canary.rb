cask "omniwm@canary" do
  version "20261128-0412-46106223232-1"
  sha256 "ccb0f082d3e01d7afd31c057c753c9260bad0a1fa6c3a3bcfd50e13e34209d18"

  url "https://github.com/OmniNull/OmniWM/releases/download/canary-#{version}/OmniWM-canary-canary-#{version}.zip"
  name "OmniWM Canary"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  livecheck do
    url :url
    regex(/^canary[._-](\d+(?:[._-]\d+)+)$/i)
  end

  conflicts_with cask: "omniwm"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OmniWM.app"
  binary "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl"
  generate_completions_from_executable "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl", "completion"

  uninstall quit: "com.barut.OmniWM"

  zap trash: [
    "~/.config/omniwm",
    "~/.local/state/omniwm",
    "~/Library/Application Support/com.barut.OmniWM",
    "~/Library/Application Support/CrashReporter/OmniWM_*.plist",
    "~/Library/Caches/com.barut.OmniWM",
    "~/Library/HTTPStorages/com.barut.OmniWM",
    "~/Library/Logs/DiagnosticReports/OmniWM-*.ips",
    "~/Library/Preferences/com.barut.OmniWM.plist",
  ]
end
