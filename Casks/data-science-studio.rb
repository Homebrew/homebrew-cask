cask "data-science-studio" do
  version "8.0.1"
  sha256 "ffcbd822ea5f001ad5b844068170807da95545de679a7ab6195d9287b7f28feb"

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast "https://www.dataiku.com/dss/trynow/mac/"
  name "Dataiku Data Science Studio"
  homepage "https://www.dataiku.com/"

  app "DataScienceStudio.app"
end
