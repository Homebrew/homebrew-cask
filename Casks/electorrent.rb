cask "electorrent" do
  version "2.7.2"
  sha256 "1560f07fdc5194d4849216b1cdbd432d53cc7d09fef0e3ee8c1ba357323c33a9"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"
end
