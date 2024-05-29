cask "keybase" do
  arch arm: "arm64-"

  on_arm do
    version "6.3.0,20240528152652,16b027d126"
    sha256 "9a90649bd60260a27bd0de2834584547eb7cf90a93fd48d2eb24aad32cdf8cee"
  end
  on_intel do
    version "6.3.0,20240528151149,16b027d126"
    sha256 "695d6d9a5588e125e74513f57537ceddad96481bb7116f490d8ba5e4d8b65667"
  end

  url "https://prerelease.keybase.io/darwin-#{arch}updates/Keybase-#{version.csv.first}-#{version.csv.second}%2B#{version.csv.third}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-#{arch}prod-v2.json"
    strategy :page_match do |page|
      match = page.match(/Keybase[._-]v?(\d+(?:\.\d+)+)[._-](\d+)%2B([0-9a-f]+)\.zip/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true

  app "Keybase.app"

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                   args: ["install-auto"]
  end

  uninstall launchctl: "keybase.Helper",
            signal:    [
              ["TERM", "keybase.Electron"],
              ["TERM", "keybase.ElectronHelper"],
              ["KILL", "keybase.Electron"],
              ["KILL", "keybase.ElectronHelper"],
            ],
            script:    {
              executable: "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
              args:       ["uninstall"],
            },
            delete:    [
              "/Library/Logs/keybase*",
              "/Library/PrivilegedHelperTools/keybase.Helper",
            ]

  zap trash: [
        "~/Library/Application Support/Keybase",
        "~/Library/Caches/Keybase",
        "~/Library/Group Containers/keybase",
        "~/Library/Logs/Keybase*",
        "~/Library/Preferences/keybase*",
      ],
      rmdir: "/keybase"
end
