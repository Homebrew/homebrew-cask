cask "opera-gx" do
  version "120.0.5543.85"
  sha256 "1da21079f29a062a37df0da0f8f3ba2342b2abd7284c767606a00e91f455bafb"

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
