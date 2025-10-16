cask "mac-monitor" do
  version "2.0.0"
  sha256 "f2207783de9f31ae952f2594e2a8c6e5bd85fdee8240443736190b865f49e4c3"

  url "https://github.com/Brandon7CC/mac-monitor/releases/download/v#{version}/Mac-Monitor.pkg"
  name "Mac Monitor"
  desc "Analysis tool for security research and malware triage"
  homepage "https://github.com/Brandon7CC/mac-monitor"

  depends_on macos: ">= :ventura"

  pkg "Mac-Monitor.pkg"

  uninstall script:  {
              executable:   "/Applications/Mac Monitor.app/Contents/SharedSupport/uninstall.sh",
              must_succeed: false,
              sudo:         true,
            },
            pkgutil: "com.swiftlydetecting.agent"

  zap trash: [
    "~/Library/Application Support/Mac Monitor",
    "~/Library/Preferences/com.swiftlydetecting.agent.plist",
    "~/Library/Saved Application State/com.swiftlydetecting.agent.savedState",
  ]
end
