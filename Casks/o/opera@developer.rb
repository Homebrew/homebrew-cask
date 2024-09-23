cask "opera@developer" do
  version "115.0.5297.0"
  sha256 "7081a500dc43440636bbde00f3b1ebc2b5ef79a8dd63ecbbb8bf29a24f48eedf"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  desc "Web browser"
  homepage "https://www.opera.com/browsers/opera/developer"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-developer/"
    regex(/href="(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Opera Developer.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaDeveloper",
    "~/Library/Caches/com.operasoftware.OperaDeveloper",
    "~/Library/Cookies/com.operasoftware.OperaDeveloper.binarycookies",
    "~/Library/Preferences/com.operasoftware.OperaDeveloper.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaDeveloper.savedState",
  ]
end
