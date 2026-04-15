cask "santa" do
  version "2026.3"
  sha256 "998950acf97d35a133aef1ea9ea32ced58c005c87118faac6545b6ac2f831bb7"

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
