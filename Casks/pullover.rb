cask 'pullover' do
  version '1.2.0'
  sha256 '134b185b095871594f53008fbd91a5c963c67034c8e8462e0919279f0d93e741'

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast 'https://github.com/cgrossde/Pullover/releases.atom',
          checkpoint: '7610adf404cef72b9a637341c92fcbfdffbc4b5f7dbdd0594862f006b694372d'
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'

  app 'pullover.app'
end
