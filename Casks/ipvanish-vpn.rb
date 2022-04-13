cask "ipvanish-vpn" do
  version "3.3.0,67479"
  sha256 "d738cc5db300b512c2329d349e5c4df7dfaba78935e09b89a90f98974ddada5f"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.csv.first}_b67497.zip"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "IPVanish VPN.app"

  zap trash: [
    "~/Library/Application Support/com.ipvanish.IPVanish",
    "~/Library/Caches/com.ipvanish.IPVanish",
    "~/Library/Logs/IPVanish VPN",
    "~/Library/Preferences/com.ipvanish.IPVanish.plist",
  ]
end
