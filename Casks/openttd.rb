cask "openttd" do
  if MacOS.version <= :high_sierra
    version "1.11.2"
    sha256 "44f7e08b806124cce8d99c5adc906eb4280ba8057609b8c309080d63fcfb17c2"
  else
    version "12.2"
    sha256 "aca8ec9d4c055290281a7225447712877c03225366437aad332d8fb7ed91908c"
  end

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macos-universal.zip"
  name "OpenTTD"
  desc "Open-source transport simulation game"
  homepage "https://www.openttd.org/"

  livecheck do
    url "https://www.openttd.org/downloads/openttd-releases/latest.html"
    regex(%r{href=.*?/openttd-(\d+(?:\.\d+)*)-macos-universal\.zip}i)
  end

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
