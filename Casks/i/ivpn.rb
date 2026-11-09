cask "ivpn" do
  arch arm: "-arm64"

  version "3.16.1"
  sha256 arm:   "27a1c4c13e2db82e8b9eec29fd0a4b88daefcd08023add16431ab6c4956e2938",
         intel: "f392087d0835592d5d9e62bdda68e905cc3f99b473f1fcc2b7abb4f286789dd7"

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
