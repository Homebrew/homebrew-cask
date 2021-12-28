cask "electorrent" do
  version "2.7.3"
  sha256 "965e305abbd2064c0b4419797a93b7d379eca7182430dd662891bb9737a778fc"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"
end
