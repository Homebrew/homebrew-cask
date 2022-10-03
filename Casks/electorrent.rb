cask "electorrent" do
  version "2.8.0"
  sha256 "7b03a0d2b5c5ca422c60deb74d8ec29f87df5a9e070a8858f8094fa6bd83a1e6"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"
end
