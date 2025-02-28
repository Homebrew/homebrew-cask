cask "flightgear" do
  version "2024.1.1,9261456144"
  sha256 "def74a0db27616a0db193e38ca6d33eea6201453e8114cdf760fbe76d74d8451"

  url "https://gitlab.com/flightgear/fgmeta/-/jobs/#{version.csv.second}/artifacts/raw/output/FlightGear-#{version.csv.first}.dmg",
      verified: "gitlab.com/flightgear/"
  name "FlightGear"
  desc "Flight simulator"
  homepage "https://www.flightgear.org/"

  livecheck do
    url "https://www.flightgear.org/download/"
    regex(%r{href=.*?/jobs/(\d+)/artifacts/raw/output/FlightGear[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "FlightGear.app"

  zap trash: "~/Library/Application Support/FlightGear"
end
