cask "mac-monitor" do
  version "1.9.0"
  sha256 "9273a1bc5ef5195ae6e86e1dc436d5732de97972dcbe95521d0300592f9fff1c"

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
