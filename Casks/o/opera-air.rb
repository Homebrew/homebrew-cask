cask "opera-air" do
  version "126.0.5750.97"
  sha256 "571718c4a2763de15d3232c11fd55d72fd3f8cbf49311d015982fc132c0c2086"

  url "https://get.geo.opera.com/pub/opera_air/#{version}/mac/Opera_Air_#{version}_Setup.dmg"
  name "Opera Air"
  desc "Web browser"
  homepage "https://www.opera.com/air"

  livecheck do
    url "https://ftp.opera.com/pub/opera_air/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
