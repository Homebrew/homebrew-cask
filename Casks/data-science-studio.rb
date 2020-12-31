cask "data-science-studio" do
  version "8.0.4"
  sha256 "b7550d9a1c57e256fef5ea1f13250ff33c1bb083fcdb3a251997469239a98ec1"

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast "https://www.dataiku.com/dss/trynow/mac/"
  name "Dataiku Data Science Studio"
  homepage "https://www.dataiku.com/"

  app "DataScienceStudio.app"
end
