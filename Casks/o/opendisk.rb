cask "opendisk" do
  version "1.2.4"
  sha256 "b2e667bf507c3641a5f3e22569d047e18f07dc28a07f7aef59ed754678e7e34d"

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
