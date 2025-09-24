cask "alienator88-sentinel" do
  version "3.1.3"
  sha256 "ad85627dafe4aa7e1cf30e92a5a5b4df221f78db69b222d676696df7c0985015"

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
