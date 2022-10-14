cask "qlab" do
  version "5.0.7,5007"
  sha256 "0e4bdcdd70fd0c87ed5a02154259db588ad83061b0ba5dbf1ee01163603e98ad"

  url "https://qlab.app/downloads/archive/QLab-#{version.csv.first}.zip"
  name "QLab"
  desc "Sound, video and lighting control"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle
  end

  auto_updates true

  app "QLab.app"

  zap trash: [
    "~/Library/Application Support/QLab",
    "~/Library/HTTPStorages/com.figure53.QLab.#{version.major}",
    "~/Library/Preferences/com.figure53.QLab.#{version.major}.plist",
    "~/Library/Saved Application State/com.figure53.QLab.#{version.major}.savedState",
  ]
end
