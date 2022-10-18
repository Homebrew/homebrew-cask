cask "ivpn" do
  arch arm: "-arm64"

  version "3.9.32"
  sha256 arm:   "74a640f30c22a5197b26de7b2fbc4f2b21cdfe848ed7869ec13d6d94253bee35",
         intel: "f2c5ff37ec33c427694ff8680f4e3567ae207ee24038eb7fe41faf7e05e1a417"

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
