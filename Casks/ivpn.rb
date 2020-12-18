cask "ivpn" do
  version "2.12.10"
  sha256 "b955b230977d64b45cb81b6f4a31b8f42dbc864b98bc91202f46a495c89b3d21"

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
