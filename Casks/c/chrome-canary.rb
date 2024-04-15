cask "chrome-canary" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/canary/googlechromecanary.dmg"
  name "Google Chrome Canary"
  desc "Experimental version of Google Chrome for developers, updated nightly"
  homepage "https://www.google.com/chrome/canary/"

  auto_updates false
  conflicts_with cask: [
    "chrome",
    "chrome-beta",
    "chrome-dev",
  ]
  depends_on macos: ">= :catalina"

  app "Google Chrome Canary.app"

  uninstall launchctl: [
    "com.google.keystone.agent",
    "com.google.keystone.daemon",
  ]

  zap trash: [
          "/Library/Google/Google Chrome Brand.plist",
          "~/Library/Application Support/Google/Chrome Canary",
          "~/Library/Caches/com.google.Chrome.canary",
          "~/Library/Caches/com.google.Keystone.Agent",
          "~/Library/Caches/com.google.SoftwareUpdate",
          "~/Library/Caches/Google/Chrome Canary",
          "~/Library/Google/GoogleSoftwareUpdate",
          "~/Library/Logs/GoogleSoftwareUpdateAgent.log",
          "~/Library/Preferences/com.google.Chrome.canary.plist",
          "~/Library/Preferences/com.google.Keystone.Agent.plist",
          "~/Library/Saved Application State/com.google.Chrome.canary.savedState",
        "/Library/Caches/com.google.SoftwareUpdate.*",
      ],
      rmdir: [
        "/Library/Google",
        "~/Library/Application Support/Google",
        "~/Library/Caches/Google",
        "~/Library/Google",
      ]
end
