cask "cycling74-max" do
  version "9.0.6,250513"
  sha256 "58d72c0026c609ea0a5ec17f56d2940de91711b1212dd90a5334b47d33733bfa"

  url "https://downloads.cdn.cycling74.com/max#{version.csv.first.major}/Max#{version.csv.first.no_dots}_#{version.csv.second}.dmg"
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

      "#{id},#{match[1]}#{match[2]}#{match[3]}"
    end
  end

  app "Max.app"

  zap trash: [
    "/Users/Shared/Max #{version.csv.first.major}",
    "~/Documents/Max #{version.csv.first.major}",
    "~/Library/Application Support/Cycling '74",
    "~/Library/Saved Application State/com.cycling74.Max.savedState",
  ]
end
