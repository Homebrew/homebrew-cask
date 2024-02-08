cask "cycling74-max" do
  version "8.6.0_240117"
  sha256 "18d92c048ba78abd963daac8ca632aaf642118b9b8029adda437d5b4b11b6a8d"

  url "https://downloads.cdn.cycling74.com/max8/Max#{version.no_dots}.dmg"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  desc "Flexible space to create your own interactive software"
  homepage "https://cycling74.com/products/max"

  livecheck do
    url "https://auth.cycling74.com/maxversion"
    regex(/^\d{2}(\d{2})-(\d{2})-(\d{2})/i)
    strategy :json do |json, regex|
      id = json["_id"]
      match = json["release_date"]&.match(regex)
      next if id.blank? || match.blank?

      "#{id}_#{match[1]}#{match[2]}#{match[3]}"
    end
  end

  app "Max.app"

  zap trash: [
    "/Users/Shared/Max #{version.major}",
    "~/Documents/Max #{version.major}",
    "~/Library/Application Support/Cycling '74",
    "~/Library/Saved Application State/com.cycling74.Max.savedState",
  ]
end
