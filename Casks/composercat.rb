cask 'composercat' do
  version '0.4.0'
  sha256 '32cbc8da97b13050aee645dc84e4fb799e105603920375a3212b83f7c4be9fa6'

  url "https://downloads.getcomposercat.com/composercat/Composercat-#{version}.dmg"
  name 'Composercat'
  homepage 'https://www.getcomposercat.com/'

  app 'Composercat.app'
end
