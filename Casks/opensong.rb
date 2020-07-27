cask "opensong" do
  version "3.0.1"
  sha256 "7c8efb5b721a9eafccbe6832c9be93ddd1db6272c5ab94523a40464951045c85"

  # sourceforge.net/opensong/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opensong/OpenSong/V#{version}/OpenSongOSX-V#{version}.dmg"
  appcast "https://sourceforge.net/projects/opensong/rss"
  name "OpenSong"
  homepage "http://www.opensong.org/"

  app "OpenSongOSX.app"
end
