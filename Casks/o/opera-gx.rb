cask "opera-gx" do
  version "118.0.5461.90"
  sha256 "554adfc19a6260ab5b8df5ae1d7dd82829ef5c480be8f26d43a4087d50977f1d"

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
