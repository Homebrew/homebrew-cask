cask "sentinel-app" do
  version "3.1.0"
  sha256 "10a6155064e3f0529409b088b9f69f3b5261ab3606204d4e37b1ef5c6759a8c8"

  url "https://github.com/alienator88/Sentinel/releases/download/#{version}/Sentinel.dmg",
      verified: "github.com/alienator88/Sentinel/"
  name "sentinel-app"
  desc "Gatekeeper configurator and app signer/quarantine remover"
  homepage "https://itsalin.com/appInfo/?id=sentinel"

  depends_on macos: ">= :ventura"

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Scripts/com.alienator88.Sentinel",
    "~/Library/Application Scripts/group.com.alienator88.Sentinel",
    "~/Library/Application Support/Sentinel",
    "~/Library/Caches/com.alienator88.Sentinel",
    "~/Library/Containers/com.alienator88.Sentinel",
    "~/Library/Group Containers/group.com.alienator88.Sentinel",
    "~/Library/HTTPStorages/com.alienator88.Sentinel",
    "~/Library/Preferences/com.alienator88.Sentinel.plist",
  ]
end
