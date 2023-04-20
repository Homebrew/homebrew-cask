cask "eqmac" do
  version "1.7.10"
  sha256 "37327a872072d80c335963ea829c97aafd265ce699b77b89ffcfb1368d971a29"

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
