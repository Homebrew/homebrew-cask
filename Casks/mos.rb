cask "mos" do
  version "3.4.0"
  sha256 "01c338db847141b8fc21bba281cdb6138824ede85c98b406345eb8899457476f"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
