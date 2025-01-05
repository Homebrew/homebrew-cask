cask "keybase" do
  arch arm: "arm64-"

  on_arm do
    version "6.5.0,20241007140341,f10651d043"
    sha256 "be6938cc738e5bfa38d4cfacbf202085892231880cbc98f39675ecd625e989fd"
  end
  on_intel do
    version "6.5.0,20241007134954,f10651d043"
    sha256 "3fa2755d5ab50099ce48b25dc51b3a1b45012e4b82a2e63809107c4d090753ec"
  end

  url "https://prerelease.keybase.io/darwin-#{arch}updates/Keybase-#{version.csv.first}-#{version.csv.second}%2B#{version.csv.third}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-#{arch}prod-v2.json"
    strategy :json do |json|
      json["version"]&.tr("-+", ",")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/keybase.*.sfl*",
        "~/Library/Application Support/Keybase",
        "~/Library/Caches/Keybase",
        "~/Library/Group Containers/keybase",
        "~/Library/LaunchAgents/keybase.*.plist",
        "~/Library/Logs/Keybase*",
        "~/Library/Preferences/keybase*",
      ],
      rmdir: "/keybase"
end
