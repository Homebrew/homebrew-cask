cask "opera-air" do
  version "135.0.5973.120"
  sha256 "c9a16ed010bb9b63f0bb7c07692a01276c68400e24f97cdebc58d3c1aad5ac3f"

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
