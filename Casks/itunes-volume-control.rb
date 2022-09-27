cask "itunes-volume-control" do
  version "1.7.4"
  sha256 "4a47b1dc908297a68de8859b671ae86052335e41271d2dc2b19f6deff1b9ff60"

  url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/VolumeControl-v#{version}.zip",
      verified: "raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/"
  name "iTunes Volume Control"
  desc "Control the volume of Apple Music and Spotify using keyboard volume keys"
  homepage "https://github.com/alberti42/Volume-Control"

  livecheck do
    url "https://github.com/alberti42/Volume-Control#versions"
    strategy :page_match
    regex(%r{href=.*?/VolumeControl[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Volume Control.app"
end
