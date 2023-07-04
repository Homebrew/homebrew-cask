cask "cycling74-max" do
  version "8.5.5_230613"
  sha256 "b84cc043ebfccd23f782cd621517ee42ae289d54a782455fc46edb6ef23fcf9d"

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg",
      verified: "akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  desc "Flexible space to create your own interactive software"
  homepage "https://cycling74.com/"

  livecheck do
    url "https://auth.cycling74.com/maxversion"
    regex(/^\d{2}(\d{2})[._-](\d{2})[._-](\d{2})/i)
    strategy :page_match do |page, regex|
      json = JSON.parse(page)
      match = json["release_date"].match(regex)
      next if match.blank?

      "#{json["_id"]}_#{match[1]}#{match[2]}#{match[3]}"
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
