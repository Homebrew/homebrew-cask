cask "qlab" do
  version "5.0.5,5005"
  sha256 "dfecdf5015d306710b9f8d36fe3c827692caf86274c56b8d1fc1a04081152760"

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
