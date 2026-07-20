cask "happ" do
  version "3.3.6"
  sha256 "722c7734be623de6e1dd19cef5650ae02b0d9f93cd9a274a3c53eac148f17b15"

  url "https://github.com/Happ-proxy/happ-desktop/releases/download/#{version}/Happ.macOS.universal.dmg",
      verified: "github.com/Happ-proxy/happ-desktop/"
  name "Happ"
  desc "Platform for building proxies to bypass network restrictions"
  homepage "https://www.happ.su/main/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Happ.app"

  zap trash: [
    "/Library/LaunchDaemons/com.happ.happd.plist",
    "~/Library/Application Support/Happ",
    "~/Library/Caches/Happ",
    "~/Library/Preferences/com.happ.plist",
    "~/Library/Preferences/Happ",
  ]
end
