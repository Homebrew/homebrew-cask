cask "mac-monitor" do
  version "1.9.1"
  sha256 "417e1635122237b964d969e9acbb98d21f92828e45c680210c1d0ac0273ef945"

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
