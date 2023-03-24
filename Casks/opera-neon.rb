cask "opera-neon" do
  version "1.0.2531.0,2531.0"
  sha256 :no_check

  url "https://get.geo.opera.com/.private/OperaNeon.dmg"
  name "Opera Neon"
  homepage "https://www.opera.com/computer/neon"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Opera Neon.app"

  zap trash: [
    "~/Library/Application Support/Opera Neon",
    "~/Library/Caches/Opera Neon",
  ]
end
