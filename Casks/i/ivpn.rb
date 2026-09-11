cask "ivpn" do
  arch arm: "-arm64"

  version "3.15.15"
  sha256 arm:   "8212b21653c665faef41f2234ed535bf3e29c678d9cee768c8f26bd0c1f7b438",
         intel: "6692fac6196a8c7b801a9a05a9d6324e52701bf5c52a2d8eda024ad82b9551bf"

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
