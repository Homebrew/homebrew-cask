cask "happ" do
  version "4.5.4"
  sha256 "c3c583196968956479755e60cdc5790186ce524df431e31128c17447930b40c8"

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
