cask "data-science-studio" do
  version "8.0.2"
  sha256 "eee29aeae730cd036c4cd61b73d3f2079c5cdab70113bff751110b54b7e4c197"

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast "https://www.dataiku.com/dss/trynow/mac/"
  name "Dataiku Data Science Studio"
  homepage "https://www.dataiku.com/"

  app "DataScienceStudio.app"
end
