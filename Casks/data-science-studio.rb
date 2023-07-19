cask "data-science-studio" do
  version "1.3.7"
  sha256 "19aaf9a6b4bc1d80148427ce4c978e57f2178a207a78f09bc5300bf3e35e4a1a"

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
