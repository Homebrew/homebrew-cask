cask "ivpn" do
  arch arm: "-arm64"

  version "3.14.29"
  sha256 arm:   "96aab10b7436473951131a06350291726b6387b4413e6a74b6a85cd0a8ac7a3c",
         intel: "74c4466f858ffd584d04d3c51d5ad51289dca7a73ff89b5db7818d4179e18acf"

  url "https://repo.ivpn.net/macos/bin/IVPN-#{version}#{arch}.dmg"
  name "IVPN"
  desc "VPN client"
  homepage "https://www.ivpn.net/en/apps-macos"

  livecheck do
    url :homepage
    regex(/href=.*?IVPN[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
