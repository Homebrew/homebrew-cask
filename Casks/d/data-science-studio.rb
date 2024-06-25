cask "data-science-studio" do
  version "1.3.8"
  sha256 "dbc312a349743090140d4da018c7fe65b30604baec9ede5034287bc238d16d7e"

  url "https://cdn.downloads.dataiku.com/public/launcher/macos/DataScienceStudio-#{version}-mac.zip"
  name "Dataiku Data Science Studio"
  desc "Quick experimentation and operationalization for machine learning at scale"
  homepage "https://www.dataiku.com/"

  livecheck do
    url "https://cdn.downloads.dataiku.com/public/launcher/macos/latest-mac.yml"
    strategy :electron_builder
  end

  app "DataScienceStudio.app"

  zap trash: [
    "~/Library/Application Support/DataikuLauncher",
    "~/Library/DataScienceStudio",
    "~/Library/Preferences/com.dataiku.datasciencestudio.plist",
    "~/Library/Saved Application State/com.dataiku.datasciencestudio.savedState",
  ]
end
