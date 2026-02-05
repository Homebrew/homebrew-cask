cask "keybase" do
  arch arm: "-arm64"

  sha256 :no_check

  on_arm do
    version "6.5.4,20250917154415,52400b6f28"
  end
  on_intel do
    version "6.5.4,20250917153314,52400b6f28"
  end

  url "https://prerelease.keybase.io/Keybase#{arch}.dmg"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin#{arch}-prod-v2.json"
    strategy :json do |json|
      json["version"]&.tr("-+", ",")
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
