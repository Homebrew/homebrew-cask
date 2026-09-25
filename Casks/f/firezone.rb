cask "firezone" do
  version "1.5.21"
  sha256 "ec999cc6b8846f7d60dc5568acb2173f735c45969041ea89a906597d90b28228"

  url "https://github.com/firezone/firezone/releases/download/apple-client-#{version}/firezone-macos-client-#{version}.dmg"
  name "Firezone"
  desc "Zero-trust access platform built on WireGuard"
  homepage "https://www.firezone.dev/"

  livecheck do
    url "https://www.firezone.dev/dl/firezone-client-macos/latest"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Firezone.app"

  uninstall launchctl: "dev.firezone.firezone.keep-app-running"

  # The app installs a system extension that cannot be removed systematically at this time.
  # After the limitation is removed, `systemextensionsctl uninstall "dev.firezone.firezone.network-extension"`
  # could be used to uninstall the extension.
  zap trash: [
    "~/Library/Application Scripts/*.dev.firezone.firezone",
    "~/Library/Containers/dev.firezone.firezone,",
    "~/Library/Group Containers/*.dev.firezone.firezone",
  ]
end
