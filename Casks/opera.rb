cask "opera" do
  version "77.0.4054.64"
  sha256 "a46ebcf850b7c38922cb7c1aa8122f8b8324f1c83d300049c34354aff4bda50e"

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  name "Opera"
  desc "Web browser"
  homepage "https://www.opera.com/"

  livecheck do
    url "https://ftp.opera.com/pub/opera/desktop/"
    strategy :page_match
    regex(/href=['"]?(\d+(?:\.\d+)*)['"]?/i)
  end

  auto_updates true

  app "Opera.app"

  zap trash: [
    "~/Library/Preferences/com.operasoftware.Opera.plist",
    "~/Library/Application Support/com.operasoftware.Opera/",
  ]
end
