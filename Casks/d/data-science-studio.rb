cask "data-science-studio" do
  version "13.0.0"
  sha256 "5d946312589de764fee7a379ed936b794e0e1f1a0f88dcaaa47afff1396f4932"

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

  caveats do
    requires_rosetta
  end
end
