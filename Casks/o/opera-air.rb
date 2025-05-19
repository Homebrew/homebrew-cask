cask "opera-air" do
  version "118.0.5461.132"
  sha256 "0aa1dde3b52a2f6c0684bda9cc4ccf97afa695f70304f84a3e3eb48230a08370"

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
