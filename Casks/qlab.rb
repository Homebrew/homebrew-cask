cask "qlab" do
  version "5.0,5000"
  sha256 "b0dec9ade7bb4270f4a2d76951a30019460f7eddfe99b8a45bfccb2e130fe5ff"

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
