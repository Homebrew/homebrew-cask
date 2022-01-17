cask "itunes-volume-control" do
  version "1.7.3"
  sha256 "5f979ae3c069de67dd084b81ae194a6cf38a12f543aa100ef03019634768e7d9"

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
