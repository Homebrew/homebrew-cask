cask "eqmac" do
  version "1.8.12"
  sha256 "ab75f4868390ae21e65d487cdbfe2be62acb3f2de4170bed4be16b3e059f1328"

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg",
      verified: "github.com/bitgapp/eqMac/"
  name "eqMac"
  desc "System-wide audio equaliser"
  homepage "https://eqmac.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "eqMac.app"

  uninstall delete: "/Library/Audio/Plug-Ins/HAL/eqMac.driver"

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
