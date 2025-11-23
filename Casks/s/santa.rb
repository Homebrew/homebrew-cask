cask "santa" do
  version "2025.11"
  sha256 "6f4328f49237df2c9ca59f9c947a5c01f3aa69564d6dbe3e7e49a18e37326cea"

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
