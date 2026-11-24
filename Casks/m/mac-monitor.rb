cask "mac-monitor" do
  version "3.2.0"
  sha256 "43cdca109ea397686fbe5d36457184988cc4a5f5ab3fa22637a9ed79ae8d4149"

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
