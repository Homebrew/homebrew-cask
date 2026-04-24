cask "happ" do
  version "2.9.1"
  sha256 "13bbf2a11f84eacb62f2fc99843fb8ed227da0d0951d8b6246fcb27d95690c53"

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
