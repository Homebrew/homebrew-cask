cask 'opensesame' do
  version '3.2.8'
  sha256 '1f660ce97518c904153ce8a50a57102166c8991f3ed65fb24f87ff69fb2cc0e8'

  # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
