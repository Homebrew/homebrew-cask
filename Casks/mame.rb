cask 'mame' do
  version '0.135'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mameosx/rss',
          checkpoint: 'a3295c669aae45dd0ae512c6db410298b0b59bad9c537200b2b1b7df8207279f'
  name 'MAME'
  homepage 'http://mameosx.sourceforge.net/'

  app 'MAME OS X.app'
end
