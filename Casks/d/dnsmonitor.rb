cask "dnsmonitor" do
  version "1.0.1"
  sha256 "ba0a54877cea0e3731271621ee09f4a6877548b5bdcbf785ba38862600bbabaf"

  url "https://github.com/objective-see/DNSMonitor/releases/download/v#{version}/DNSMonitor_#{version}.zip",
      verified: "github.com/objective-see/DNSMonitor/"
  name "dnsmonitor"
  desc "Monitor DNS activity"
  homepage ""

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "DNSMonitor.app"
  binary "#{appdir}/DNSMonitor.app/Contents/MacOS/DNSMonitor", target: "dnsmonitor"
end
