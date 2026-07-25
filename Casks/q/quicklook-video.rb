cask "quicklook-video" do
  version "3.10"
  sha256 "42fb3382292ecec65971a7e3cc09a86e2d95ca814a2fe03f8170cfd9b505c541"

  url "https://github.com/Marginal/QuickLookVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QuickLookVideo"

  # The version in the tag and asset file name doesn't include dots, so we match
  # the version from the release title (e.g. "Release 1.23").
  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest do |json, regex|
      json["name"]&.[](regex, 1)
    end
  end

  depends_on macos: :tahoe

  app "QuickLook Video.app"

  zap trash: [
    "~/Library/Application Scripts/*.qlvideo",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.previewer",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Application Scripts/uk.org.marginal.qlvideo.formatreader",
    "~/Library/Application Scripts/uk.org.marginal.qlvideo.videodecoder",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.previewer",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Containers/uk.org.marginal.qlvideo.formatreader",
    "~/Library/Containers/uk.org.marginal.qlvideo.videodecoder",
    "~/Library/Group Containers/*.qlvideo",
    "~/Library/Saved Application State/com.apple.uk.org.marginal.qlvideo.savedState",
  ]
end
