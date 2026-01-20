cask "mos-beta" do
  version "4.0.0-beta-1201-123826"
  sha256 "c238e3ad61d20b2142a857891165ded7928e0b04e2359a86fb9c9d6ae1ca500a"

  url "https://github.com/Caldis/Mos/releases/download/4.0.0-beta-1201/Mos.Versions.#{version}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
