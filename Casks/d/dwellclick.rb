cask "dwellclick" do
  version "2.3.2"
  sha256 "0873f6aa1485eb617bb35ec5796b1258128befc18f99101ca6b494cff966b5bd"

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
