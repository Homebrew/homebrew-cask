cask "itunes-volume-control" do
  version "1.7.2"
  sha256 "9fb6a5fb0df8ca6aa135defd284bf23049cb128b621b906795378f0a043c047e"

  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip",
      verified: "uni-bonn.de/alberti/iTunesVolumeControl/"
  name "iTunes Volume Control"
  homepage "https://github.com/alberti42/iTunes-Volume-Control"

  livecheck do
    url "https://github.com/alberti42/iTunes-Volume-Control#versions"
    strategy :page_match
    regex(%r{href=.*?/iTunesVolumeControl-v?(\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "iTunes Volume Control.app"
end
