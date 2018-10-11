cask 'opensesame' do
  version '3.2.5'
  sha256 'eb297484a9c1ea245ddd9d5392cdd39d557ac5337032309791dac63a2be9aeb5'

  # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-1.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
