cask 'composercat' do
  version '0.3.1'
  sha256 '6944ccd5d9e641dc7ffac35107d18a776858a01c9f6518aa54496a796caed944'

  url "https://downloads.getcomposercat.com/composercat/Composercat-#{version}.dmg"
  name 'Composercat'
  homepage 'https://getcomposercat.com/'

  app 'Composercat.app'
end
