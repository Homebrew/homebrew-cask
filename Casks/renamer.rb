cask "renamer" do
  version "6.1.1,61006"
  sha256 "e64a05c9d857e6745f53e55e99587b875c821540e1d5be95e0db0fa9f354cf94"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version.csv.first}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
