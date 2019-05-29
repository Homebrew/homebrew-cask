cask 'opensong' do
  version '2.2.7,2.2.3-1075'
  sha256 'b347c7c9e1c5a152e943e3e06e0bbf50b43ea41680bae75aa191764b00f50181'

  # sourceforge.net/opensong was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opensong/OpenSong/V#{version.before_comma}/OpenSongOSX-V#{version.after_comma}.dmg"
  appcast 'https://sourceforge.net/projects/opensong/rss'
  name 'OpenSong'
  homepage 'http://www.opensong.org/'

  app 'OpenSongOSX.app'
end
