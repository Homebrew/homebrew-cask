cask "ivpn" do
  version "3.3.10"
  sha256 "388a4460f7a37dc6c306249fd0b74c000b17adc7d461e6617ff94e0f315471e5"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}.dmg"
  name "IVPN"
  desc "VPN client"
  homepage "https://www.ivpn.net/apps-macos"

  livecheck do
    url "https://www.ivpn.net/setup/mac-changelog.html"
    strategy :page_match
    regex(%r{href=.*?/IVPN-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
