cask "keybase" do
  arch arm: "arm64-"

  on_arm do
    version "6.5.1,20250422141116,19f9cfeddb"
    sha256 "085fa763b6b6648218274c7a0080b0a810ec750578d0c432f0b682ad5cd0c370"
  end
  on_intel do
    version "6.5.2,20250428134940,6652519c3d"
    sha256 "e790bbebc4c83ccd26c84e58e9a2f8faca0518c9a81846a3149f08b3ae9ffa09"
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
