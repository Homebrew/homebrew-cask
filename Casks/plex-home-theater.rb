class PlexHomeTheater < Cask
  version '1.2.1.314'

  if MacOS.prefer_64_bit?
    sha256 '0e243ca7112cccd11f75bf799ff21a69413dc1eca6652f934ed456ac54fab5ae'
    url 'http://downloads.plexapp.com/plex-home-theater/1.2.1.314-7cb0133e/PlexHomeTheater-1.2.1.314-7cb0133e-macosx-x86_64.zip'
  else
    sha256 '87954578b4aa1ec93876115967b0da61d6fa47f3f1125743a55f688366d56860'
    url 'http://downloads.plexapp.com/plex-home-theater/1.2.1.314-7cb0133e/PlexHomeTheater-1.2.1.314-7cb0133e-macosx-i386.zip'
  end

  homepage 'https://plex.tv'

  link 'Plex Home Theater.app'
end
