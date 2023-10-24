cask "opera" do
  version "104.0.4944.28"
  sha256 "f737bcd5641ecc6de1958e74c6dcdec2723101355a26d5bd18a1b92f3c05bac8"

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
