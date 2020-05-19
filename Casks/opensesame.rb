cask 'opensesame' do
  version '3.3.1'
  sha256 'ef20883bf06ad3786a074531803fab34efc88a9061847480e3d12a8507166aef'

  # github.com/smathot/OpenSesame/ was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
