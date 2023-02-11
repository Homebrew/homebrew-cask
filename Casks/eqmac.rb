cask "eqmac" do
  version "1.7.5"
  sha256 "ae53a382129837d5d51931312d81a40847e857b53040ec90ae177fe0ee717e45"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg",
      verified: "github.com/bitgapp/eqMac/"
  name "eqMac"
  desc "System-wide audio equalizer"
  homepage "https://eqmac.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "eqMac.app"

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
