cask 'opensesame' do
  version '3.3.3'
  sha256 'f0f8ae1dfbbd5608e96a9ca891d834eae8a64abaed990d100354d53e0f28a210'

  # github.com/smathot/OpenSesame/ was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
