cask "eqmac" do
  version "1.8.5"
  sha256 "f5fcfbf0f8a25091190e7a1aa98a8349b70b7774a697a9c6dba763732523658b"

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
  depends_on macos: ">= :sierra"

  app "eqMac.app"

  uninstall delete: "/Library/Audio/Plug-Ins/HAL/eqMac.driver/"

  zap trash: [
    "~/Library/Caches/com.bitgapp.eqmac",
    "~/Library/Preferences/com.bitgapp.eqmac.plist",
    "~/Library/WebKit/com.bitgapp.eqmac",
  ]
end
