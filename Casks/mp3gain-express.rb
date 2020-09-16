cask "mp3gain-express" do
  version "2.4.0"
  sha256 "43725242307dc7bee59c133f0fcef1acf64cfeb7d209b833d72cbe930697d32e"

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.chomp(".0").no_dots}.zip"
  appcast "https://projects.sappharad.com/mp3gain/updates.xml"
  name "MP3Gain Express"
  homepage "https://projects.sappharad.com/mp3gain/"

  app "MP3Gain Express.app"
end
