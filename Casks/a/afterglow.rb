cask "afterglow" do
  version "1.0.1"
  sha256 "f0b8a55af180bbcf1a6a08838129859ea831b9e9a582e0ad657fe7ee9951ddfd"

  url "https://morphing.cloud/afterglow/Afterglow-v#{version}.dmg"
  name "Afterglow"
  desc "Classic After Dark screen savers emulator"
  homepage "https://morphing.cloud/afterglow/"

  livecheck do
    url "https://morphing.cloud/afterglow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Afterglow.app"

  zap trash: [
    "~/Library/Application Support/Afterglow",
    "~/Library/Caches/cloud.morphing.afterglow",
    "~/Library/HTTPStorages/cloud.morphing.afterglow",
    "~/Library/Preferences/cloud.morphing.afterglow.plist",
  ]
end
