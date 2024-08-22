cask "dnsmonitor" do
  version "1.3.0"
  sha256 "2d70c45f55e67d4e71823acd7232e7ad1aa41ca7a2223f8d0263a1474c647e8d"

  url "https://github.com/objective-see/DNSMonitor/releases/download/v#{version}/DNSMonitor_#{version}.zip"
  name "dnsmonitor"
  desc "Monitor DNS activity"
  homepage "https://github.com/objective-see/DNSMonitor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "DNSMonitor.app"

  # No zap stanza required
end
