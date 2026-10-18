cask "opendisk" do
  version "1.3.0"
  sha256 "a5318365698a15ee42614cb1a19b61df2744ce68f2f3f53842e7e81269088e44"

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
