cask "keybase" do
  version "5.9.0,20220121192730,95a3939b3a"
  sha256 "00a113f296545b464135764c51a66e0ab792785004cf37f6e3f9cc220990c267"

  url "https://prerelease.keybase.io/darwin-updates/Keybase-#{version.csv.first}-#{version.csv.second}%2B#{version.csv.third}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-prod-v2.json"
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

  uninstall delete:    [
    "/Library/Logs/keybase*",
    "/Library/PrivilegedHelperTools/keybase.Helper",
  ],
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
    "~/Library/Preferences/keybase*",
  ],
      rmdir: "/keybase"
end
