cask "ivpn" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.8.20"

  if Hardware::CPU.intel?
    sha256 "3532012d627699e2c3027a4d1778547c6bcbe64c97bd69015be25fbb93b982cf"
  else
    sha256 "2de8c7f384973982484c6656edd3b9fc01091d1c2c282ee979aceea3b6b88413"
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
