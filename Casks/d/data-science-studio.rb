cask "data-science-studio" do
  version "14.0.3"
  sha256 "56a687b84efb970d21ae0d6f0c377814e42d8e81b95b6004eac3020678d892b7"

  url "https://cdn.downloads.dataiku.com/public/launcher/macos/DataScienceStudio-#{version}-mac.zip"
  name "Dataiku Data Science Studio"
  desc "Quick experimentation and operationalization for machine learning at scale"
  homepage "https://www.dataiku.com/"

  livecheck do
    url "https://cdn.downloads.dataiku.com/public/launcher/macos/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

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
