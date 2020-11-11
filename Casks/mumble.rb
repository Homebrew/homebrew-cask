cask "mumble" do
  version "1.3.3"
  sha256 "dd779a1be92dfb162f7453230f8906f2a7d1799324c5b710fcc5ccd381ff12e5"

  # github.com/mumble-voip/mumble/ was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast "https://github.com/mumble-voip/mumble/releases.atom"
  name "Mumble"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://wiki.mumble.info/wiki/Main_Page"

  app "Mumble.app"
end
