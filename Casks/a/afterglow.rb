cask "afterglow" do
  version "1.0"
  sha256 "08d70c2759776ea2d8dd99d444b6317aad6b0c0ffc21ee9e057ae26b6f8f755e"

  url "https://morphing.cloud/afterglow/Afterglow-v#{version}.dmg"
  name "Afterglow"
  desc "Classic After Dark screen savers emulator"
  homepage "https://morphing.cloud/afterglow/"

  livecheck do
    url "https://morphing.cloud/afterglow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Afterglow.app"

  zap trash: [
    "~/Library/Application Support/Afterglow",
    "~/Library/Caches/cloud.morphing.afterglow",
    "~/Library/HTTPStorages/cloud.morphing.afterglow",
    "~/Library/Preferences/cloud.morphing.afterglow.plist",
  ]
end
