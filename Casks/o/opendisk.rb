cask "opendisk" do
  version "1.5.1"
  sha256 "2309c58340587155b8ca7ef42cb18751f90cee6c7a7967ff39deed19a05cee56"

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
