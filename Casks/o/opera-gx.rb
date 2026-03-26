cask "opera-gx" do
  version "129.0.5823.26"
  sha256 "38e9e3e6a7ff7c75b2719f82ee7853bf2be26f188afc9d261889dce54ef10b91"

  url "https://get.geo.opera.com/pub/opera_gx/#{version}/mac/Opera_GX_#{version}_Setup.dmg"
  name "Opera GX"
  desc "Alternate version of the Opera web browser to complement gaming"
  homepage "https://www.opera.com/gx"

  livecheck do
    url "https://ftp.opera.com/pub/opera_gx/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Opera GX.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaGX",
    "~/Library/Caches/com.operasoftware.Installer.OperaGX",
    "~/Library/Caches/com.operasoftware.OperaGX",
    "~/Library/Cookies/com.operasoftware.OperaGX.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.OperaGX",
    "~/Library/Preferences/com.operasoftware.OperaGX.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaGX.savedState",
  ]
end
