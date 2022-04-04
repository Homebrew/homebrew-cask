cask "data-science-studio" do
  version "1.3.3"
  sha256 "0bb3a571c618fa15d7d40f981910d8e33839400d2b495450ace4c2743034b67d"

  url "https://cdn.downloads.dataiku.com/public/launcher/macos/DataScienceStudio-#{version}-mac.zip"
  name "Dataiku Data Science Studio"
  desc "Quick experimentation and operationalization for machine learning at scale"
  homepage "https://www.dataiku.com/"

  livecheck do
    url "https://cdn.downloads.dataiku.com/public/launcher/macos/latest-mac.yml"
    strategy :electron_builder
  end

  app "DataScienceStudio.app"
end
