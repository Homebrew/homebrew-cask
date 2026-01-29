cask "protonvpn" do
  version "6.3.0"
  sha256 "dcfafa310161b750de91eb7641663b181c7e7740ee65392359d68ddc6cb7493b"

  url "https://vpn.protondownload.com/download/macos/#{version}/ProtonVPN_mac_v#{version}.dmg",
      verified: "vpn.protondownload.com/"
  name "ProtonVPN"
  desc "VPN client focusing on security"
  homepage "https://protonvpn.com/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://protonvpn.com/download/macos/updates/v5/sparkle.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ProtonVPN.app"

  uninstall launchctl: "ch.protonvpn.ProtonVPNStarter",
            quit:      "ch.protonvpn.mac"

  zap trash: [
    "~/Library/Application Scripts/*.group.ch.protonvpn.mac",
    "~/Library/Application Scripts/ch.protonvpn.*",
    "~/Library/Application Support/CrashReporter/ProtonVPN*",
    "~/Library/Application Support/ProtonVPN",
    "~/Library/Caches/ch.protonvpn.mac",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/ch.protonvpn.mac",
    "~/Library/Caches/SentryCrash/ProtonVPN",
    "~/Library/Containers/ch.protonvpn.*",
    "~/Library/Cookies/ch.protonvpn.mac.binarycookies",
    "~/Library/Group Containers/*.group.ch.protonvpn.mac",
    "~/Library/Logs/ProtonVPN.log",
    "~/Library/Preferences/ch.protonvpn.mac.plist",
    "~/Library/WebKit/ch.protonvpn.mac",
  ]
end
