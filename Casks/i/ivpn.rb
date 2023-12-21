cask "ivpn" do
  arch arm: "-arm64"

  version "3.13.4"
  sha256 arm:   "5699ef5702970e6310f1bafe3a77ad3b1e4e6f4292c3396d0b0b2c6162893036",
         intel: "52fc8838cdde376d89ebb718494771da84d1ded18632780a4172888c132efaa4"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}#{arch}.dmg"
  name "IVPN"
  desc "VPN client"
  homepage "https://www.ivpn.net/apps-macos"

  livecheck do
    url :homepage
    regex(/href=.*?IVPN[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IVPN.app"

  uninstall_preflight do
    set_ownership "#{appdir}/IVPN.app"
  end

  uninstall launchctl: "net.ivpn.client.Helper",
            quit:      "net.ivpn.client.IVPN",
            delete:    [
              "/Library/Application Support/IVPN",
              "/Library/PrivilegedHelperTools/net.ivpn.client.Helper",
            ]

  zap trash: "~/Library/Preferences/net.ivpn.client.IVPN.plist"
end
