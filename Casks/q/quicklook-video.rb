cask "quicklook-video" do
  on_sequoia :or_newer do
    version "3.10"
    sha256 "42fb3382292ecec65971a7e3cc09a86e2d95ca814a2fe03f8170cfd9b505c541"

    # The version in the tag and asset file name doesn't include dots, so we match
    # the version from the release title (e.g. "Release 1.23").
    livecheck do
      url :url
      regex(/v?(\d+(?:\.\d+)+)/i)
      strategy :github_latest do |json, regex|
        json["name"]&.[](regex, 1)
      end
    end
  end
  on_sonoma :or_older do
    version "2.24"
    sha256 "56f007628967808f2b70fda9cd11ae678181ef22107903eb59e419c0f9143348"

    # The version in the tag and asset file name doesn't include dots, so we match
    # the version from the release title (e.g. "Release 1.23").
    livecheck do
      url :url
      regex(/v?(2(?:\.\d+)+)/i)
      strategy :github_releases do |json, regex|
        json.map do |release|
          release["name"]&.[](regex, 1)
        end.flatten
      end
    end
  end

  url "https://github.com/Marginal/QuickLookVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QuickLookVideo"

  depends_on macos: :monterey

  app "QuickLook Video.app"

  zap trash: [
    "~/Library/Application Scripts/*.qlvideo",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Group Containers/*.qlvideo",
    "~/Library/Saved Application State/com.apple.uk.org.marginal.qlvideo.savedState",
  ]
end
