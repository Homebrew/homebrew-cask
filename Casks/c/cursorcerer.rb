cask "cursorcerer" do
  on_ventura :or_older do
    version "2.0"
    sha256 "f23e9cd4d16c0c2cea45fdd8e81fa3b46f421ee4b89972539c378e93c2e6c4be"

    url "https://doomlaser.com/downloads/Cursorcerer-#{version}.zip"
    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "3.5"
    sha256 :no_check

    url "https://www.doomlaser.com/downloads/Cursorcerer.zip"
    livecheck do
      url :homepage
      regex(/Cursorcerer\s+(\d+(?:\.\d+)+)/i)
    end
  end

  name "Cursorcerer"
  desc "Preference Pane for controlling cursor hiding"
  homepage "https://doomlaser.com/cursorcerer-hide-your-cursor-at-will/"

  prefpane "Cursorcerer.prefPane"

  zap trash: "~/Library/Preferences/com.doomlaser.cursorcerer.plist"
end
