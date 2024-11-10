cask "itunes-volume-control" do
  version "1.7.6"
  sha256 "0234cda125630eb63e2677ca168d9198998ddae958d0596d69a0166f72a5c155"

  url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/VolumeControl-v#{version}.zip",
      verified: "raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/"
  name "iTunes Volume Control"
  desc "Control the volume of Apple Music and Spotify using keyboard volume keys"
  homepage "https://github.com/alberti42/Volume-Control"

  # Upstream doesn't use GitHub releases or reliably create tags for new
  # versions. Instead, we match the file links in the README.
  livecheck do
    url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/README.md"
    regex(/VolumeControl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Volume Control.app"
end
