cask "red-canary-mac-monitor" do
  version "1.0.5"
  sha256 "254dc88b26d0b26e2dde2e2936927ca6f21a816616148b79719c9d3e6023d9ac"

  url "https://github.com/redcanaryco/mac-monitor/releases/download/v#{version}/Red-Canary-Mac-Monitor-GoldCardinal-#{version.tr(".", "-")}.pkg",
      verified: "github.com/redcanaryco/mac-monitor/"
  name "Red Canary Mac Monitor"
  desc "Analysis tool for security research and malware triage"
  homepage "https://redcanary.com/mac-threat-analysis-tool/"

  depends_on macos: ">= :ventura"

  pkg "Red-Canary-Mac-Monitor-GoldCardinal-#{version.tr(".", "-")}.pkg"

  # The uninstall script requires user input to remove an installed system
  # extension. It is expected that the uninstall CI will time out and fail.
  uninstall script:  {
              executable:   "/Applications/Red Canary Mac Monitor.app/Contents/SharedSupport/uninstall.sh",
              must_succeed: false,
              sudo:         true,
            },
            pkgutil: "com.redcanary.agent"

  zap trash: [
    "~/Library/Application Support/Red Canary Mac Monitor",
    "~/Library/Preferences/com.redcanary.agent.plist",
    "~/Library/Saved Application State/com.redcanary.agent.savedState",
  ]
end
