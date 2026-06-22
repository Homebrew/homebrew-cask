cask "happ" do
  version "2.18.1"
  sha256 "95f99020432cbbed62d104ec30ef18a9ae5e227c2b3b29b9faa5bfddc9be696d"

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
