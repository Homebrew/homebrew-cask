cask "itunes-volume-control" do
  version "1.6.8"
  sha256 "93386a0ffcc7f96fbb6de42c2d1f04339e3e62f9ce7bc99e106ff73c7345440c"

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
