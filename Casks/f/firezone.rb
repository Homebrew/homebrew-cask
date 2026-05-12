cask "firezone" do
  version "1.5.15"
  sha256 "36ec2b8786ddd2715acebae279ad1faa0c9c03733f920348c30610a9faac8515"

  url "https://github.com/firezone/firezone/releases/download/macos-client-#{version}/firezone-macos-client-#{version}.dmg",
      verified: "github.com/firezone/firezone/"
  name "Firezone"
  desc "Zero-trust access platform built on WireGuard"
  homepage "https://www.firezone.dev/"

  livecheck do
    url "https://www.firezone.dev/dl/firezone-client-macos/latest"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Firezone.app"

  # The app installs a system extension that cannot be removed systematically at this time.
  # After the limitation is removed, `systemextensionsctl uninstall "dev.firezone.firezone.network-extension"`
  # could be used to uninstall the extension.
  zap trash: [
    "~/Library/Application Scripts/*.dev.firezone.firezone",
    "~/Library/Containers/dev.firezone.firezone,",
    "~/Library/Group Containers/*.dev.firezone.firezone",
  ]
end
