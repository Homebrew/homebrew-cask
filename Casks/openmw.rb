cask 'openmw' do
  version '0.40.0'
  sha256 'e0443aedd4918ffa2c979bb367fbb8937232d118ab1477e05482f2b8009d6128'

  # github.com/OpenMW/openmw was verified as official when first introduced to the cask
  url "https://github.com/OpenMW/openmw/releases/download/openmw-#{version}/OpenMW-#{version}.dmg"
  appcast 'https://github.com/OpenMW/openmw/releases.atom',
          checkpoint: '1ed7e74b620dd7c37785c429c209811e9736ff082fb276f0f93e94fd03398e53'
  name 'OpenMW'
  homepage 'https://openmw.org/'

  suite 'OpenMW'
end
