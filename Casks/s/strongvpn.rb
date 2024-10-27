cask "strongvpn" do
  version "2.4.3,124208"
  sha256 "cfe8bfd076715268048acebb279a012788e1028eff2aa6adc5239f41e6f4d746"

  url "https://static.colomovers.com/mac/StrongVPN_v#{version.csv.first}_b#{version.csv.second}.zip",
      verified: "static.colomovers.com/mac/"
  name "StrongVPN"
  desc "VPN app with support for multiple protocols"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  # The version returned by the default :sparkle strategy is incorrect, as there
  # is a mismatch between the version in the URL and the version in the appcast.
  # The version in the URL is the correct one, so we need to pull the version
  # and build from the URL. This can likely be removed in the next release
  livecheck do
    url "https://static.colomovers.com/mac/updates.xml"
    regex(/StrongVPN[._-]*v?(\d+(?:\.\d+)+)[._-]b(\d+)\.zip/i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map do |match|
        next if match.blank?

        "#{match[0]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "StrongVPN.app"

  zap trash: [
    "~/Library/Application Support/com.strongvpn.StrongVPN2-Client",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.strongvpn.StrongVPN2-Client",
    "~/Library/Caches/com.strongvpn.StrongVPN2-Client",
    "~/Library/HTTPStorages/com.strongvpn.StrongVPN2-Client*",
    "~/Library/Preferences/com.strongvpn.StrongVPN2-Client.plist",
    "~/Library/Saved Application State/com.strongvpn.StrongVPN2-Client.savedState",
  ]
end
