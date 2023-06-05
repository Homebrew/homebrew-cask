cask "data-science-studio" do
  version "1.3.6"
  sha256 "689f2fe65df3e68e1ed7f175e109a71e91b9304eb8cc8b4f2727af333b5040a3"

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
