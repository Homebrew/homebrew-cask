cask "qlvideo" do
  version "2.00"
  sha256 "e4ebad7c0fba9f57038f38956931ab57676ac007198d5a8056fbc0c9ad6af96c"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QLVideo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QuickLook Video.app"
end
