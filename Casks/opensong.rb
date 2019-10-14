cask 'opensong' do
  version '3.0.0'
  sha256 'a9ef4384eea2dcf99e7e7f296be86b93a11228c3d75a9c21ede2846eb961dffd'

  # sourceforge.net/opensong was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opensong/OpenSong/V#{version}/OpenSongOSX-V#{version}.dmg"
  appcast 'https://sourceforge.net/projects/opensong/rss'
  name 'OpenSong'
  homepage 'http://www.opensong.org/'

  app 'OpenSongOSX.app'
end
