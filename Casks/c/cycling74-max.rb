cask "cycling74-max" do
  version "8.5.6_230906"
  sha256 "b58e384794abf63d9776837fcdcadc59a31ba5e160d89da9d88d50723b397c99"

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
