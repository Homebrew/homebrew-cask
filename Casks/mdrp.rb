cask 'mdrp' do
  version '6.0.5'
  sha256 '4a8bb95527530d144b42a857617a3d34f56a7521931fcc6a069fc75af4793cb2'

  url "http://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  appcast 'https://www.macdvdripperpro.com/mdrp_sparkle5.xml',
          checkpoint: '182bbd4878cff5cef58fdbb700f6dd0ae625aca284407d49aab56afad85f4b66'
  name 'Mac DVDRipper Pro'
  homepage 'https://www.macdvdripperpro.com/'

  app 'MDRP.app'
end
