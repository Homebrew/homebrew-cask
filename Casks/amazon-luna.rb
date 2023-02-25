cask "amazon-luna" do
  version "1.8400.5866.0"
  sha256 :no_check

  url "https://www.amazon.com/luna/download/client/mac"
  name "Amazon Luna"
  desc "Play your favorite games straight from the cloud"
  homepage "https://www.amazon.com/luna/"

  # amazon-luna does use an appcast.xml for auto-updates, but
  # the appcast uses an authentication token and is not easily accessible
  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Amazon Luna.app"

  zap trash: [
    "~/Library/Application Support/Amazon Luna",
    "~/Library/Caches/Amazon Luna",
    "~/Library/Caches/Amazon.SpiderPorkClientMac",
    "~/Library/HTTPStorages/Amazon.SpiderPorkClientMac",
    "~/Library/HTTPStorages/Amazon.SpiderPorkClientMac.binarycookies",
    "~/Library/Logs/Amazon Luna",
    "~/Library/Preferences/Amazon.SpiderPorkClientMac.plist",
    "~/Library/WebKit/Amazon.SpiderPorkClientMac",
  ]
end
