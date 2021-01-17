cask "mp3gain-express" do
  version "2.4.1"
  sha256 "686158f1ed158763584966c732695cb625cc8ad6a4ac613cdf5ae914324bf65e"

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.chomp(".0").no_dots}.zip"
  name "MP3Gain Express"
  homepage "https://projects.sappharad.com/mp3gain/"

  livecheck do
    url "https://projects.sappharad.com/mp3gain/updates.xml"
    strategy :sparkle
  end

  app "MP3Gain Express.app"
end
