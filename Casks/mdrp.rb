cask 'mdrp' do
  version '7.1.1'
  sha256 '0b7fba44f24a6455528b21042055bbfe41aa2639e42efd67e0b97dcfb56ce7a6'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: 'e4b1ef3cd2f8be5bf82825da0f684813af404c2bd8e9d43a9bf17aa3521acbb3'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'MDRP.app'
end
