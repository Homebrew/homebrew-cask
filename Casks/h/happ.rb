cask "happ" do
  version "4.8.7"
  sha256 "471bbb7aa00639b42e8e1ef1ebe86e90aa6436fd912595a62a045c8336f1a823"

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
