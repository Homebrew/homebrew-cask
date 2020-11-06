cask "ivpn" do
  version "2.12.6"
  sha256 "dac7caeff9a1584e6e471a566df0b662c03ef15cab4abf5b8dba349ac9901d2e"

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
  appcast "https://www.ivpn.net/setup/mac-changelog.html"
  name "IVPN"
  homepage "https://www.ivpn.net/apps-macos"

  auto_updates true

  app "IVPN.app"

  uninstall_preflight do
    set_ownership "#{appdir}/IVPN.app"
  end

  uninstall delete:    [
    "/Library/Application Support/IVPN",
    "/Library/PrivilegedHelperTools/net.ivpn.client.Helper",
  ],
            launchctl: "net.ivpn.client.Helper",
            quit:      "net.ivpn.client.IVPN"

  zap trash: "~/Library/Preferences/net.ivpn.client.IVPN.plist"
end
