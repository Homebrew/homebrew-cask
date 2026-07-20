cask "ivpn" do
  arch arm: "-arm64"

  version "3.15.13"
  sha256 arm:   "8b56a35af8a4634d3e5dfd9d8b307e55a962e0f0e4927256c48a2ebbb53f6844",
         intel: "6b182f89213bfb5950243ec664f5736434eeb1443d687e68789ed10461cbc485"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}#{arch}.dmg"
  name "IVPN"
  desc "VPN client"
  homepage "https://www.ivpn.net/en/apps-macos"

  livecheck do
    url :homepage
    regex(/href=.*?IVPN[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "IVPN.app"

  uninstall_preflight_steps do
    set_ownership "IVPN.app", base: :appdir
  end

  uninstall launchctl: "net.ivpn.client.Helper",
            quit:      "net.ivpn.client.IVPN",
            delete:    [
              "/Library/Application Support/IVPN",
              "/Library/PrivilegedHelperTools/net.ivpn.client.Helper",
            ]

  zap trash: "~/Library/Preferences/net.ivpn.client.IVPN.plist"
end
