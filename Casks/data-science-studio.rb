cask "data-science-studio" do
  version "8.0.5"
  sha256 "34103048c6e7c296243dc54f4cb0b27ee0960040acab00d973f316e0e0d556b9"

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast "https://www.dataiku.com/dss/trynow/mac/"
  name "Dataiku Data Science Studio"
  homepage "https://www.dataiku.com/"

  app "DataScienceStudio.app"
end
