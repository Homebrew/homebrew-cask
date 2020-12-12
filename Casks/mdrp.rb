cask "mdrp" do
  version "9.0.2"
  sha256 "e146b80260d4a194895245f767c698f00bbc568dfcc4c76e3de3991dc5e72710"

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
  name "Mac DVDRipper Pro"
  desc "Utility to rip and copy DVD content"
  homepage "https://www.macdvdripperpro.com/"

  app "MDRP.app"
end
