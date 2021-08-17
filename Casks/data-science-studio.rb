cask "data-science-studio" do
  version "9.0.1"
  sha256 "51ee4eae7410e7a145d9937714f0ec991a118ca78241ed3056281571921f8292"

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name "Dataiku Data Science Studio"
  desc "Quick experimentation and operationalization for machine learning at scale"
  homepage "https://www.dataiku.com/"

  livecheck do
    url "https://www.dataiku.com/dss/trynow/mac/"
    strategy :page_match
    regex(%r{href=.*?/Data%20Science%20Studio%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "DataScienceStudio.app"
end
