cask "cycling74-max" do
  version "8.2.1_211116"
  sha256 "70b223922cbb4b15b7fc04e57efeb9b8c93afe19cdffa55925208b290736f5c5"

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg",
      verified: "akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  desc "Flexible space to create your own interactive software"
  homepage "https://cycling74.com/"

  livecheck do
    url "https://auth.cycling74.com/maxversion"
    strategy :page_match do |page|
      json = JSON.parse(page)
      match = json["release_date"].match(/^\d{2}(\d{2})[._-](\d{2})[._-](\d{2})/)
      next if match.blank?

      "#{json["_id"]}_#{match[1]}#{match[2]}#{match[3]}"
    end
  end

  app "Max.app"
end
