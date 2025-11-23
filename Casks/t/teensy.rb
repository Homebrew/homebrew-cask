cask "teensy" do
  version "1.59-beta3"
  sha256 :no_check

  url "https://www.pjrc.com/teensy/teensy.dmg"
  name "Teensy"
  desc "Firmware flashing utility"
  homepage "https://pjrc.com/teensy/loader_mac.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "teensy.app"

  zap trash: "~/Library/Saved Application State/com.pjrc.teensy.savedState"

  caveats do
    requires_rosetta
  end
end
