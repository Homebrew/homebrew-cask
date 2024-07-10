cask "electorrent" do
  version "2.8.3"
  sha256 "0069ff6fbed2870d33d6665f1f28d54b0b67036626368b94a0b7d3bdf82ccd8a"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  auto_updates true

  app "Electorrent.app"

  caveats do
    requires_rosetta
  end
end
