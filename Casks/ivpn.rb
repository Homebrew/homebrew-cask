cask "ivpn" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.9.0"

  if Hardware::CPU.intel?
    sha256 "1401aebc95034a9f4ec78fec99cac37ea8af9f0723e2ad40848f02414c0749c8"
  else
    sha256 "68f44e4bdc734cf659268ab4905d09384b7c7d7899f3a71fba6ae71732579bb4"
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
