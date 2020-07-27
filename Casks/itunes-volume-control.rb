cask "itunes-volume-control" do
  version "1.6.8"
  sha256 "93386a0ffcc7f96fbb6de42c2d1f04339e3e62f9ce7bc99e106ff73c7345440c"

  # uni-bonn.de/alberti/iTunesVolumeControl/ was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast "https://github.com/alberti42/iTunes-Volume-Control#versions"
  name "iTunes Volume Control"
  homepage "https://github.com/alberti42/iTunes-Volume-Control"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "iTunes Volume Control.app"
end
