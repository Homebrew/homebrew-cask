cask "happ" do
  version "4.8.6"
  sha256 "68ee78f6489aad6f075093e9b9ae1487518014441c60d7f6cfab5aebec97c523"

  url "https://github.com/Happ-proxy/happ-desktop/releases/download/#{version}/Happ.macOS.universal.dmg"
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
