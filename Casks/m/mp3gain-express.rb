cask "mp3gain-express" do
  version "2.5"
  sha256 "4fe8ffc0b46f4076424fa845889045fc1f54b75cca0dafd42a6b72b083e7436b"

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.chomp(".0").no_dots}.zip"
  name "MP3Gain Express"
  desc "Port of MP3Gain and AACGain"
  homepage "https://projects.sappharad.com/mp3gain/"

  livecheck do
    url "https://projects.sappharad.com/mp3gain/updates.xml"
    strategy :sparkle
  end

  app "MP3Gain Express.app"
end
