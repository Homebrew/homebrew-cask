cask "alienator88-sentinel" do
  version "3.0.0"
  sha256 "82d0a8f1b431ff3c75fecd33e3254f9060cf02aa87343e0060fe48fd1fbb8289"

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
