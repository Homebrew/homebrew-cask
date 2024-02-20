cask "dnsmonitor" do
  version "1.0.1"
  sha256 "ba0a54877cea0e3731271621ee09f4a6877548b5bdcbf785ba38862600bbabaf"

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
