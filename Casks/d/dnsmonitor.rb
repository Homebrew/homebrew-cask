cask "dnsmonitor" do
  version "1.1.0"
  sha256 "138b9d3e4e3598488ddfb24a3d32811c9e316eddeb17900998dc92cb58f9d5c6"

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
