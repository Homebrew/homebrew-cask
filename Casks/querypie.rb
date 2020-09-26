cask "querypie" do
  version "6.2.0"
  sha256 "22edf316966edb1edf13dc2846714cb4523479298f372b02b0fed00092e550f4"

  # d2f8621kw7pn7s.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d2f8621kw7pn7s.cloudfront.net/latest/QueryPie-#{version}.dmg"
  appcast "https://d2f8621kw7pn7s.cloudfront.net/latest/latest-mac.yml"
  name "QueryPie"
  desc "Data warehouse client for data analytics teams"
  homepage "https://www.querypie.com/"

  app "QueryPie.app"
end
