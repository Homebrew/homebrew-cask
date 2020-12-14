cask "mediaelch" do
  version "2.8.0,2020-12-13:d69831f1"
  sha256 "fbda864a3d7af7779920f5b876972b82578a4c4203cdf268498328b594a05947"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version.before_comma}/MediaElch_macOS_#{version.before_comma}_#{version.after_comma.before_colon}_git-#{version.after_colon}.dmg",
      verified: "github.com/Komet/MediaElch/"
  appcast "https://github.com/Komet/MediaElch/releases.atom"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  depends_on macos: ">= :sierra"

  app "MediaElch.app"
end
