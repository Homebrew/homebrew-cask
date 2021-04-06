cask "ivpn" do
  version "3.3.5"
  sha256 "106cef1f4034c0ba40d5c5d4155b77415dec073cdfc3b81e7272f7cb83aa698d"

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
