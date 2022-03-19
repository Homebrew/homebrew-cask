cask "ivpn" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.4.0"

  if Hardware::CPU.intel?
    sha256 "ca9d45f7df2eb95fa5f57ada9012d6add95113635b74f21df36c40725687b3f2"
  else
    sha256 "8a1f4bb2c01f289b2ca241b86c0b5eec4b1225de06777d076d2ef534e20e7481"
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
