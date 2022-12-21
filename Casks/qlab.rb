cask "qlab" do
  version "5.0.12,5012"
  sha256 "4a7eccf07ba7db01c7b9439a3724f792f69556cc01ea1b358b4489e1638576b4"

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
