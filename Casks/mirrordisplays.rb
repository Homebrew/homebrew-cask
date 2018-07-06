cask 'mirrordisplays' do
  version '1.2'
  sha256 '68b6b9a0bd79945d0e1239f308520a6cfd582fdde4dd061195de888b41643dd5'

  # github.com/fcanas/mirror-displays was verified as official when first introduced to the cask
  url "https://github.com/fcanas/mirror-displays/releases/download/v#{version}/MirrorDisplays.zip"
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom'
  name 'Mirror Displays'
  homepage 'https://fabiancanas.com/open-source/mirror-displays'

  app 'MirrorDisplays.app'
end
