cask "qlvideo" do
  version "3.06"
  sha256 "e05aed1cd29698f64419d9c6ea89e91da20a11d85609912dfef2d04df9116746"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QLVideo"

  livecheck do
    url :url
    regex(/^QLVideo[._-]v?(\d+?)(\d+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]}.#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :sonoma"

  app "QuickLook Video.app"

  zap trash: [
    "~/Library/Application Scripts/*.qlvideo",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Group Containers/*.qlvideo",
    "~/Library/Saved Application State/com.apple.uk.org.marginal.qlvideo.savedState",
  ]
end
