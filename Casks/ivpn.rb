cask "ivpn" do
  version "2.12.9"
  sha256 "d3c2ca2c5c6aecaff51807797e58c6403752eed4e64dcde0f4170b14024c8a03"

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
