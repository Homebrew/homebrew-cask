cask "speedcrunch" do
  version "0.12"
  sha256 "09a881ef4e5d8ee37f90b5291544fcabeb28c63bc57e6e5eabbd748e09c975be"

  url "https://bitbucket.org/heldercorreia/speedcrunch/downloads/SpeedCrunch-#{version}.dmg",
      verified: "bitbucket.org/heldercorreia/speedcrunch/"
  name "SpeedCrunch"
  homepage "https://heldercorreia.bitbucket.io/speedcrunch/"

  deprecate! date: "2024-10-29", because: :unmaintained

  app "SpeedCrunch.app"

  zap trash: [
    "~/Library/Application Support/SpeedCrunch",
    "~/Library/Preferences/SpeedCrunch",
  ]

  caveats do
    requires_rosetta
  end
end
