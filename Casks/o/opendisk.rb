cask "opendisk" do
  version "1.2.2"
  sha256 "c7b86f710fbae89edb7d650daa8b041e83a2e1261224620b27b5a63743a1a5db"

  url "https://github.com/137137137/OpenDisk/releases/download/v#{version}/OpenDisk-#{version}.zip"
  name "OpenDisk"
  desc "Disk space analyser"
  homepage "https://opendisk.app/"

  livecheck do
    url "https://opendisk.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "OpenDisk.app"

  uninstall quit: "ideals.OpenDisk"

  zap trash: [
    "~/Library/Application Scripts/ideals.OpenDisk",
    "~/Library/Caches/ideals.OpenDisk",
    "~/Library/Containers/ideals.OpenDisk",
    "~/Library/Preferences/ideals.OpenDisk.plist",
  ]
end
