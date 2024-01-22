cask "outset" do
  version "4.1.1.21918"
  sha256 "5c38db5fcba9cc91e4dd815395796de083a3d8ff713886544d792858c259884c"

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
            ],
            pkgutil:   "io.macadmins.Outset",
            delete:    "/usr/local/outset"

  zap trash: [
    "/Library/LaunchAgents/io.macadmins.outset.login.plist",
    "/Library/LaunchAgents/io.macadmins.outset.login-window.plist",
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
