cask "opera" do
  version "102.0.4880.33"
  sha256 "1ed4bb1b2ab060d5ccdf6057cdfdbf99fe93e64b0656bec738240e4d60859c1f"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.Opera",
    "~/Library/Caches/com.operasoftware.Installer.Opera",
    "~/Library/Caches/com.operasoftware.Opera",
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Saved Application State/com.operasoftware.Opera.savedState",
  ]
end
