cask "firezone" do
  version "1.5.23"
  sha256 "ab1fd337e1e6061a80416a7eba16d2ab6e9d6608c44654feff9eb0752857ad01"

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
  binary "#{appdir}/Firezone.app/Contents/Resources/bin/firezone"

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
