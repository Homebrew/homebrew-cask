cask "keybase" do
  version "5.5.0-20200526170801,139bb348af"
  sha256 "ccee4d6e971a265f411a841695cd19e2a040b27d11484850f02b432d7e931d51"

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
