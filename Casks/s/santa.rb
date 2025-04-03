cask "santa" do
  version "2025.3"
  sha256 "06a33253a015be318503523df054771786a2d71d99f5e679329f32968d808cc1"

  url "https://github.com/northpolesec/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/northpolesec/santa"

  pkg "santa-#{version}.pkg"

  uninstall early_script: {
              executable:   "/Applications/Santa.app/Contents/MacOS/Santa",
              args:         ["--unload-system-extension"],
              sudo:         true,
              must_succeed: false,
            },
            launchctl:    [
              "com.northpolesec.santa",
              "com.northpolesec.santa.bundleservice",
              "com.northpolesec.santa.metricservice",
              "com.northpolesec.santa.syncservice",
              "com.northpolesec.santad",
            ],
            pkgutil:      "com.northpolesec.santa",
            delete:       [
              "/Applications/Santa.app",
              "/usr/local/bin/santactl",
            ]

  zap delete: [
        "/var/db/santa",
        "/var/log/santa*",
      ],
      trash:  [
        "/private/etc/asl/com.northpolesec.santa.asl.conf",
        "/private/etc/newsyslog.d/com.northpolesec.santa.newsyslog.conf",
      ]
end
