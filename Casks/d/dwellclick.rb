cask "dwellclick" do
  version "2.3.1"
  sha256 "0f8423715bec34ea18d1ebbd20d1c9dbba45dbf04695c7eef62689a782078d4b"

  url "https://pilotmoon.com/downloads/DwellClick-#{version}.zip"
  name "DwellClick"
  desc "Assistive app for clicking without physically pressing a mouse button"
  homepage "https://pilotmoon.com/dwellclick/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/dwellclick/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "DwellClick.app"

  zap trash: "~/Library/Preferences/com.pilotmoon.DwellClick.plist"
end
