cask "firezone" do
  version "1.5.19"
  sha256 "163bcfb0cd87736276fb676b15639276b600f6306350fb2411425ce12207c810"

  url "https://github.com/firezone/firezone/releases/download/macos-client-#{version}/firezone-macos-client-#{version}.dmg"
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
