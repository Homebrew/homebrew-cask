cask 'pullover' do
  version '1.2.0'
  sha256 '134b185b095871594f53008fbd91a5c963c67034c8e8462e0919279f0d93e741'

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast 'https://github.com/cgrossde/Pullover/releases.atom',
          checkpoint: '03b2961ced24f4f785633edbc1ee182bac05a8ccbbe30c6266a228e017a17080'
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'

  app 'pullover.app'
end
