cask "happ" do
  version "2.7.0"
  sha256 "7ce65af0bb62f94d9e295dc0a80a9850202fb7d22c6683a6e121b5e2bc9e4a38"

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
