cask "happ" do
  version "2.17.1"
  sha256 "35dec3d0d7da2cc2054ea10ec53ef345ded3c86745052a6cd1ae38e5a5d30608"

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
