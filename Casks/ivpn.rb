cask "ivpn" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.8.7"

  if Hardware::CPU.intel?
    sha256 "e1e9d166b55af4103a85198b4d195622a1a1820b8d39f4201b9ff012a6b3bab1"
  else
    sha256 "7ea309b19f344d291395b362feaa190271d5ac4c37f4480978cb6b8e442323b2"
  end

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

  uninstall delete:    [
    "/Library/Application Support/IVPN",
    "/Library/PrivilegedHelperTools/net.ivpn.client.Helper",
  ],
            launchctl: "net.ivpn.client.Helper",
            quit:      "net.ivpn.client.IVPN"

  zap trash: "~/Library/Preferences/net.ivpn.client.IVPN.plist"
end
