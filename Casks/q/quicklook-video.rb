cask "quicklook-video" do
  version "3.07"
  sha256 "b7a493a45115b4ec2c33fcef7cba2907ae755657839b348661ce739c2cbc97be"

  url "https://github.com/Marginal/QuickLookVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.dmg"
  name "QuickLook Video"
  desc "Thumbnails, static previews, cover art and metadata for video files"
  homepage "https://github.com/Marginal/QuickLookVideo"

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

  depends_on macos: :sequoia

  app "QuickLook Video.app"

  zap trash: [
    "~/Library/Application Scripts/*.qlvideo",
    "~/Library/Application Scripts/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Containers/com.apple.uk.org.marginal.qlvideo.thumbnailer",
    "~/Library/Group Containers/*.qlvideo",
    "~/Library/Saved Application State/com.apple.uk.org.marginal.qlvideo.savedState",
  ]
end
