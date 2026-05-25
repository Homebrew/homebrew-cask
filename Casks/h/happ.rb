cask "happ" do
  version "2.16.2"
  sha256 "8286543fd23d5a2d5daa5f43ad7337f3cf3d1d010d7493662637012bd9bfd9f2"

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
