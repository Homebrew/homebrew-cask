cask "mac-monitor" do
  version "3.0.0"
  sha256 "4d2fc17bff2652696d230606ea98716f9203aecc35affb7759cc58e71bdac8b2"

  url "https://github.com/Brandon7CC/mac-monitor/releases/download/v#{version}/Mac-Monitor.pkg"
  name "Mac Monitor"
  desc "Analysis tool for security research and malware triage"
  homepage "https://github.com/Brandon7CC/mac-monitor"

  auto_updates true
  depends_on macos: :ventura

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
