cask "eqmac" do
  version "1.8.0"
  sha256 "31929c47056deda005eb0f002abe5c302ca80e66527be5ad1f9a02b9a53ccc78"

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

  uninstall delete: [
    "/Library/Audio/Plug-Ins/HAL/eqMac.driver/",
  ]

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
