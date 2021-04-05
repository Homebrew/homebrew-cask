cask "mdrp" do
  version "9.1.0"
  sha256 "044384eaa81118ad78c0878f669858a7749af3114d0e052fb0cd6a63021bc4cf"

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  name "Mac DVDRipper Pro"
  desc "Utility to rip and copy DVD content"
  homepage "https://www.macdvdripperpro.com/"

  livecheck do
    url "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
    strategy :sparkle
  end

  app "MDRP.app"
end
