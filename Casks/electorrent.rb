cask "electorrent" do
  version "2.8.2"
  sha256 "8e871e5d88b97167422a53081e18f12b5d395e4f05d58e20ccbb32b35f6db54f"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"
end
