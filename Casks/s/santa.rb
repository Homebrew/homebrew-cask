cask "santa" do
  version "2026.2"
  sha256 "64da401069dc94776306ca17d02dc4a02cee047189f598f191de72712c1fb40e"

  url "https://github.com/northpolesec/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/northpolesec/santa"

  depends_on macos: ">= :ventura"

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
