cask "qlab" do
  version "5.3.1"
  sha256 "aad086326ba2d2327fade3e4fea0151fcf17cc6dfa56ce96cc0c531c7bb565c7"

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
