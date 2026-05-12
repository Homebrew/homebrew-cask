cask "happ" do
  version "2.14.0"
  sha256 "260931f9dd4774dbea172027754fa0e63dbc8f8f16d0aa9128df179224e41222"

  url "https://github.com/Happ-proxy/happ-desktop/releases/download/#{version}/Happ.macOS.universal.dmg",
      verified: "github.com/Happ-proxy/happ-desktop/"
  name "Happ"
  desc "Platform for building proxies to bypass network restrictions"
  homepage "https://www.happ.su/main/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Happ.app"

  zap trash: "~/Library/Preferences/Happ"
end
