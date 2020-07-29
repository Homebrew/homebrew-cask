cask 'opensesame' do
  version '3.3.2'
  sha256 '9857b59c2b0421290a3e3e15d7e487dd573d33aa496a77fb9a78d2caee2998ab'

  # github.com/smathot/OpenSesame/ was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
