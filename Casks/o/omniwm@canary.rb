cask "omniwm@canary" do
  version "20261103-0414-41576561015-1"
  sha256 "4052fc09ec4c90d3de5e4a592c8f6062b54184aed281f8d3706298c74ce6399d"

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
