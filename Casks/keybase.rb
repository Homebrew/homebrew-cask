cask "keybase" do
  version "5.9.0,20211216221146,9b33c9201f"
  sha256 "17f0c419665e98c26eb705bbcf591bd222125ab19f3085f3dbf5e3926cdd7a22"

  url "https://prerelease.keybase.io/darwin-updates/Keybase-#{version.csv.first}-#{version.csv.second}%2B#{version.csv.third}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-prod-v2.json"
    strategy :page_match do |page|
      match = page.match(/Keybase-(\d+(?:\.\d+)*)-(\d+)%2B([0-9a-f]+)\.zip/i)
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
