cask "bitlord" do
  version "2.4.6,348"
  sha256 "081ec26228213772ca9655f6e469529e7932d628efb10beda72405ad87cfbc39"

  url "https://www.bitlord.com/osx/BitLord-ver#{version.after_comma}.dmg"
  name "BitLord"
  desc "Torrent downloader and streamer"
  homepage "https://www.bitlord.com/"

  app "BitLord.app"
end
