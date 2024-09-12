cask "qlab" do
  version "5.4.6"
  sha256 "4d031ba99c1e8718e6d5877179d2b095e5bf463bcd52380245f7fced018f056e"

  url "https://qlab.app/downloads/archive/QLab-#{version}.zip"
  name "QLab"
  desc "Sound, video and lighting control"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "QLab.app"

  zap trash: [
    "~/Library/Application Support/QLab",
    "~/Library/HTTPStorages/com.figure53.QLab.#{version.major}",
    "~/Library/Preferences/com.figure53.QLab.#{version.major}.plist",
    "~/Library/Saved Application State/com.figure53.QLab.#{version.major}.savedState",
  ]
end
