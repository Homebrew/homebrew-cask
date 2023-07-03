cask "qlvideo" do
  version "2.00"
  sha256 "e4ebad7c0fba9f57038f38956931ab57676ac007198d5a8056fbc0c9ad6af96c"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QLVideo"

  livecheck do
    url "https://api.github.com/repos/Marginal/QLVideo/releases/latest"
    strategy :page_match do |page|
      match = page.match(/QLVideo[._-]v?(\d+?)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  app "QuickLook Video.app"

  zap trash: [
    "~/Library/Application Scripts/*.qlvideo",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Group Containers/*.qlvideo",
    "~/Library/Saved Application State/com.apple.uk.org.marginal.qlvideo.savedState",
  ]
end
