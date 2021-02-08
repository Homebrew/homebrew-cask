cask "ivpn" do
  version "2.12.17"
  sha256 "0fd09967482f53c801dc55eaf23a88ad341da37f58d70d9c9e24c2e5aeb36c22"

  url "https://cdn.ivpn.net/releases/osx/IVPN-#{version}.dmg"
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
