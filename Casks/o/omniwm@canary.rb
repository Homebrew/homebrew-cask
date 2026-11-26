cask "omniwm@canary" do
  version "20261126-0649-45770455147-1"
  sha256 "37a0ee3dc62bd691647f31e883077892e123143f1e184d56dd53aa64a984255c"

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
