cask "mos" do
  version "3.3.2"
  sha256 "5ff8bb9022c090457e1a85a8728e8d3cc9216e3d9122af4afe113c392e77cbd8"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
