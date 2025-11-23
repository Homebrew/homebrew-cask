cask "outset" do
  version "4.2.0.21973"
  sha256 "f6e39f905b2877ccb5d7a2578e404282d76e7f228a4f8c17260a0ee88fb497c3"

  url "https://github.com/macadmins/outset/releases/download/v#{version}/Outset-#{version}.pkg"
  name "outset"
  desc "Process packages and scripts during boot, login, or on demand"
  homepage "https://github.com/macadmins/outset"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "outset-#{version}.pkg"

  uninstall launchctl: [
              "io.macadmins.Outset.boot",
              "io.macadmins.Outset.cleanup",
              "io.macadmins.Outset.login",
              "io.macadmins.Outset.login-privileged",
              "io.macadmins.Outset.login-window",
              "io.macadmins.Outset.on-demand",
              "io.macadmins.Outset.on-demand-privileged",
            ],
            pkgutil:   "io.macadmins.Outset",
            delete:    "/usr/local/outset"

  zap trash: [
    "/Library/LaunchAgents/io.macadmins.outset.login-window.plist",
    "/Library/LaunchAgents/io.macadmins.outset.login.plist",
    "/Library/LaunchAgents/io.macadmins.outset.on-demand.plist",
    "/Library/LaunchDaemons/io.macadmins.outset.boot.plist",
    "/Library/LaunchDaemons/io.macadmins.outset.cleanup.plist",
    "/Library/LaunchDaemons/io.macadmins.outset.login-privileged.plist",
    "/Library/Preferences/io.macadmins.Outset.plist",
  ]

  caveats do
    files_in_usr_local
  end
end
