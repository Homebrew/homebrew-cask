cask "catoclient" do
  version "5.9.0.5173"
  sha256 "12aea9a1f25f276df04553f60c8bd9731692af3979eacbf5011389f381f39faf"

  url "https://clients.catonetworks.com/macos/#{version}/CatoClient.pkg"
  name "CatoClient"
  desc "Cato Networks VPN Client"
  homepage "https://www.catonetworks.com/platform/cato-client/"

  livecheck do
    url "https://clientdownload.catonetworks.com/public/clients/CatoClient.pkg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "CatoClient.pkg"

  # See https://github.com/Homebrew/homebrew-cask/pull/227035/files#r2332239563
  uninstall_postflight do
    puts ""
    puts "The system extension(CatoClientSysExtension) cannot be uninstalled automatically at this time."
    puts "You can run `systemextensionsctl gc` to remove it manually"
  end

  uninstall launchctl: [
              "com.catonetworks.mac.CatoClient.helper",
              "com.catonetworks.mac.UserAgent",
            ],
            quit:      "com.catonetworks.mac.CatoClient",
            pkgutil:   "com.catonetworks.pkg.CatoClient",
            delete:    [
              "/Library/Application Support/CatoNetworks",
              "/Library/LaunchAgents/com.catonetworks.catoclient.UserAgent.plist",
            ]

  zap trash: "~/Library/Application Support/com.catonetworks.mac.CatoClient"
end
