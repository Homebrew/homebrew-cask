cask "opendisk" do
  version "1.5.2"
  sha256 "9a2592b43a0ad66ac83fffb9795d6f8b649f7c1db0105b7a410dea66fccf2ad2"

  url "https://github.com/137137137/OpenDisk/releases/download/v#{version}/OpenDisk-#{version}.zip"
  name "OpenDisk"
  desc "Disk space analyser"
  homepage "https://opendisk.app/"

  livecheck do
    url "https://opendisk.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenDisk.app"

  uninstall quit: "ideals.OpenDisk"

  zap trash: [
    "~/Library/Application Scripts/ideals.OpenDisk",
    "~/Library/Caches/ideals.OpenDisk",
    "~/Library/Containers/ideals.OpenDisk",
    "~/Library/Preferences/ideals.OpenDisk.plist",
  ]
end
