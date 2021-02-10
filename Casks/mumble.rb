cask "mumble" do
  version "1.3.3"
  sha256 "dd779a1be92dfb162f7453230f8906f2a7d1799324c5b710fcc5ccd381ff12e5"

  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg",
      verified: "github.com/mumble-voip/mumble/"
  name "Mumble"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://wiki.mumble.info/wiki/Main_Page"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mumble.app"
end
