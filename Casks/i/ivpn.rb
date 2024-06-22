cask "ivpn" do
  arch arm: "-arm64"

  version "3.14.14"
  sha256 arm:   "c25c046560b832d1443b371996ddbd0804d4230d6088de10101db996990729e2",
         intel: "0d4ed59601695ef8cfeb68ffad30ca761446b117d669679448ca8f4acc714f55"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}#{arch}.dmg"
  name "IVPN"
  desc "VPN client"
  homepage "https://www.ivpn.net/en/apps-macos"

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
