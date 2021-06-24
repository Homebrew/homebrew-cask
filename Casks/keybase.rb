cask "keybase" do
  version "5.7.0,20210622193735:e3826b703a"
  sha256 "c3f3a08b2a023e04f16426e6c97411f969737ccf4c3c2bcb5ba4bf7473c8eca6"

  url "https://prerelease.keybase.io/darwin-updates/Keybase-#{version.before_comma}-#{version.after_comma.before_colon}%2B#{version.after_colon}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-prod-v2.json"
    strategy :page_match do |page|
      match = page.match(/Keybase-(\d+(?:\.\d+)*)-(\d+)%2B([0-9a-f]+)\.zip/i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  auto_updates true

  app "Keybase.app"

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                   args: ["install-auto"]
  end

  uninstall delete:    "/Library/PrivilegedHelperTools/keybase.Helper",
            launchctl: "keybase.Helper",
            signal:    [
              ["TERM", "keybase.Electron"],
              ["TERM", "keybase.ElectronHelper"],
              ["KILL", "keybase.Electron"],
              ["KILL", "keybase.ElectronHelper"],
            ],
            script:    {
              executable: "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
              args:       ["uninstall"],
            }

  zap trash: [
    "~/Library/Application Support/Keybase",
    "~/Library/Caches/Keybase",
    "~/Library/Group Containers/keybase",
    "~/Library/Logs/Keybase*",
    "~/Library/Logs/keybase*",
    "~/Library/Preferences/keybase*",
    "/Library/Logs/keybase*",
  ],
      rmdir: "/keybase"
end
