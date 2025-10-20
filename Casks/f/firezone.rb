cask "firezone" do
  version "1.5.9"
  sha256 "f112269cbad9fb190fa4ae2ef16003f9a4913d6ab67f80cbca97e6b6e62e22c2"

  url "https://github.com/firezone/firezone/releases/download/macos-client-#{version}/firezone-macos-client-#{version}.dmg",
      verified: "github.com/firezone/firezone/"
  name "Firezone"
  desc "Zero-trust access platform built on WireGuard"
  homepage "https://www.firezone.dev/"

  livecheck do
    url "https://www.firezone.dev/dl/firezone-client-macos/latest"
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

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
