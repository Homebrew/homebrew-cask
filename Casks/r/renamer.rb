cask "renamer" do
  version "6.2.0"
  sha256 "0a3098b7555d0f3f96e2ac16fccabfe2811c722045e6b403f056700314314af6"

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
