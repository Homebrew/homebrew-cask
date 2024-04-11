cask "dnsmonitor" do
  version "1.1.1"
  sha256 "1bbe97e06e6176507ea9847997fd772a0a8dedc04e349671f26495cbda9ad227"

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
