cask "mediaelch" do
  version "2.8.2,2020-12-20:8ee88442"
  sha256 "5be79bead84671b487e35de41ea69b4d1a98696565d7d246f6bc11e4def53833"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version.before_comma}/MediaElch_macOS_#{version.before_comma}_#{version.after_comma.before_colon}_git-#{version.after_colon}.dmg",
      verified: "github.com/Komet/MediaElch/"
  appcast "https://github.com/Komet/MediaElch/releases.atom"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
