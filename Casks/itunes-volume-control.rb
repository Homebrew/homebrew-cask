cask "itunes-volume-control" do
  version "1.7.5"
  sha256 "606b6341d14a0c5833dba70d25e2afe5709e4d860bb4b3c1f23d0fdded1b7ee2"

  url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/VolumeControl-v#{version}.zip",
      verified: "raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/"
  name "iTunes Volume Control"
  desc "Control the volume of Apple Music and Spotify using keyboard volume keys"
  homepage "https://github.com/alberti42/Volume-Control"

  livecheck do
    url "https://github.com/alberti42/Volume-Control#versions"
    regex(%r{href=.*?/VolumeControl[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Volume Control.app"
end
