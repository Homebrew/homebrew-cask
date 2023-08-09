cask "renamer" do
  version "6.1.2"
  sha256 "7718935725aaac3c86c03efe4290f9959811a2ac387a900ed69b3a8163766ac6"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
