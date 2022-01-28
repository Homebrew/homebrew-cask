cask "renamer" do
  version "6.0.6,60600"
  sha256 "66024e88c714080854a5208d2888eda9ab3f9cccc80c81be83698f570b93b05c"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer-#{version.csv.first}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/renamer-#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
