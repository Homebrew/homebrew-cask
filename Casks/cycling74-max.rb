cask "cycling74-max" do
  version "8.3.3_221006"
  sha256 "a23d8e76179161430ceef228d1d09dba977fdb766baa21a26ba75a7aa65defd8"

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
