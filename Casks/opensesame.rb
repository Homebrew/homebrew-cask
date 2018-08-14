cask 'opensesame' do
  version '3.2.4'
  sha256 '560c94f2e4d0060240a10c4f9b688c6cbcf980ce384f20c0fc5e53bfbc28b289'

  # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
