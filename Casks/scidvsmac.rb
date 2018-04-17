cask 'scidvsmac' do
  version '4.18'
  sha256 '63747c14c5336ac7f799a77e7dd3691742014a2ab34093462ebb8e6ec3684d57'

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss',
          checkpoint: 'c8f5b1aef3cae84cd0334bd008fd008cebdfde792f9cba74b3b01d10f0751d8f'
  name 'Scid vs. Mac'
  homepage 'http://scidvspc.sourceforge.net/'

  app 'ScidvsMac.app'
end
