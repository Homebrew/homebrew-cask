cask "cycling74-max" do
  version "8.1.11_210413"
  sha256 "6f6373ef8bfc6029b84805b01a9e6191ee0574833c41b9d188a7fa41e94eebac"

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
      "#{json["_id"]}_#{match[1]}#{match[2]}#{match[3]}"
    end
  end

  app "Max.app"
end
