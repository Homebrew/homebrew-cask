cask "happ" do
  version "2.8.0"
  sha256 "e9c069d1547a7eedfba7f8e3974d8725203425b5bebbbcc2beaae4dcb2004f22"

  url "https://github.com/Happ-proxy/happ-desktop/releases/download/#{version}/Happ.macOS.universal.dmg",
      verified: "github.com/Happ-proxy/happ-desktop/"
  name "Happ"
  desc "Platform for building proxies to bypass network restrictions"
  homepage "https://www.happ.su/main/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Happ.app"

  zap trash: "~/Library/Preferences/Happ"
end
