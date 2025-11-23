cask "cursorcerer" do
  version "3.5"
  sha256 :no_check

  url "https://www.doomlaser.com/downloads/Cursorcerer.zip"
  name "Cursorcerer"
  desc "Preference Pane for controlling cursor hiding"
  homepage "https://doomlaser.com/cursorcerer-hide-your-cursor-at-will/"

  livecheck do
    url :homepage
    regex(/Cursorcerer\s+(\d+(?:\.\d+)+)/i)
  end

  prefpane "Cursorcerer.prefPane"

  zap trash: "~/Library/Preferences/com.doomlaser.cursorcerer.plist"
end
