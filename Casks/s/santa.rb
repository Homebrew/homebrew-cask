cask "santa" do
  version "2026.10"
  sha256 "09903292ec9b61942ce8c610da203bf64a6eb84692ec3030b6138f310ac5272a"

  url "https://github.com/northpolesec/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/northpolesec/santa"

  depends_on macos: :ventura

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
