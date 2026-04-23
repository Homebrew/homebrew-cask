cask "happ" do
  version "2.9.0"
  sha256 "9bff5639b6000d4e5a8adf2e9a2b0cba3d953c62bfb27bdd89bddd32c1ac815c"

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
