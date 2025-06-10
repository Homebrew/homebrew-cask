cask "dnsmonitor" do
  version "1.3.0"
  sha256 "2d70c45f55e67d4e71823acd7232e7ad1aa41ca7a2223f8d0263a1474c647e8d"

  url "https://github.com/objective-see/DNSMonitor/releases/download/v#{version}/DNSMonitor_#{version}.zip",
      verified: "github.com/objective-see/DNSMonitor/"
  name "DNSMonitor"
  desc "Monitor DNS activity"
  homepage "https://objective-see.org/products/utilities.html#DNSMonitor"

  depends_on macos: ">= :catalina"

  app "DNSMonitor.app"

  postflight do
    File.write "#{staged_path}/unload.sh", <<~SH
      #!/bin/sh
      systemextensionsctl list | grep -q "com.objective-see.dnsmonitor.extension.*activated" && \
        /Applications/DNSMonitor.app/Contents/MacOS/DNSMonitor -unload
    SH
  end

  uninstall script: {
    executable:   "#{staged_path}/unload.sh",
    must_succeed: false,
  }

  # No zap stanza required
end
