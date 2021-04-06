cask "keybase" do
  version "5.6.2-20210202191343,d72cc00cd3"
  sha256 "ccc3765fa58aac1ae5a56324b3835873945f665760a30439f34269eb6963b407"

  url "https://prerelease.keybase.io/darwin-updates/Keybase-#{version.before_comma}%2B#{version.after_comma}.zip"
  appcast "https://prerelease.keybase.io/update-darwin-prod-v2.json"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

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
