cask "dnsmonitor" do
  version "1.2.0"
  sha256 "4dd80e03d967a959040ddff8ad73be4e624da421dffc39bf26b6d40ae6ac70a9"

  url "https://github.com/objective-see/DNSMonitor/releases/download/v#{version}/DNSMonitor_v#{version}.zip"
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
