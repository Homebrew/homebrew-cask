cask "opera-gx" do
  version "117.0.5408.205"
  sha256 "897dd86f40559e73457332d6f79df5237974476283141d0359b80d35444a241f"

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
