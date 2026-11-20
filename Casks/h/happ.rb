cask "happ" do
  version "4.8.3"
  sha256 "bb42331f87c9a55225fc8764894953c7b8c1a28d6e5272f530276828626317bd"

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
