cask "opera-air" do
  version "139.0.6053.62"
  sha256 "1e8028ed9419fca687d63b1ee1d974ee0d1e920cb623253c869be0b032e74de2"

  url "https://get.geo.opera.com/pub/opera_air/#{version}/mac/Opera_Air_#{version}_Setup.dmg"
  name "Opera Air"
  desc "Web browser"
  homepage "https://www.opera.com/air"

  livecheck do
    url "https://ftp.opera.com/pub/opera_air/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "Opera Air.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaAir",
    "~/Library/Caches/com.operasoftware.Installer.OperaAir",
    "~/Library/Caches/com.operasoftware.OperaAir",
    "~/Library/Cookies/com.operasoftware.OperaAir.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.OperaAir",
    "~/Library/Preferences/com.operasoftware.OperaAir.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaAir.savedState",
  ]
end
