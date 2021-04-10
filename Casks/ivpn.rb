cask "ivpn" do
  version "3.3.7"
  sha256 "19a2d2e1a84c39ef68e3e92417779bc4bba8fad9d15152011b7610a0a5e14f26"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}.dmg"
  name "IVPN"
  homepage "https://www.ivpn.net/apps-macos"

  livecheck do
    url "https://www.ivpn.net/setup/mac-changelog.html"
    strategy :page_match
    regex(%r{href=.*?/IVPN-(\d+(?:\.\d+)*)\.dmg}i)
  end

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
