cask "alienator88-sentinel" do
  version "3.1.2"
  sha256 "3d72727226749eb7a2d866768838838ce96e12834224367eaca2c169bea155fd"

  url "https://github.com/alienator88/Sentinel/releases/download/#{version}/Sentinel.zip",
      verified: "github.com/alienator88/Sentinel/"
  name "Sentinel"
  desc "Configure Gatekeeper, unquarantine and self-sign apps"
  homepage "https://itsalin.com/appInfo/?id=sentinel"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Sentinel.app"

  uninstall quit: "com.alienator88.Sentinel"

  zap trash: [
    "~/Library/Application Support/com.alienator88.sentinel",
    "~/Library/Caches/com.alienator88.Sentinel",
    "~/Library/HTTPStorages/com.alienator88.sentinel",
    "~/Library/Preferences/com.alienator88.sentinel.plist",
  ]
end
