cask "querypie" do
  version "6.2.0,200702428"
  sha256 "22edf316966edb1edf13dc2846714cb4523479298f372b02b0fed00092e550f4"

  url "https://d2f8621kw7pn7s.cloudfront.net/latest/QueryPie-#{version.csv.first}.dmg",
      verified: "d2f8621kw7pn7s.cloudfront.net/"
  name "QueryPie"
  desc "Data warehouse client for data analytics teams"
  homepage "https://www.querypie.com/"

  livecheck do
    url "https://d2f8621kw7pn7s.cloudfront.net/latest/latest-mac.yml"
    strategy :page_match do |page|
      match = page.match(/version:\s*(\d+(?:\.\d+)*)-latest\.(\d+)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "QueryPie.app"
end
