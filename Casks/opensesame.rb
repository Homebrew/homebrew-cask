cask 'opensesame' do
  version '3.2.6'
  sha256 '90d07e4013c0f1835dcd944df1ef5ec97669a325713845a30c1da20892c23069'

  # github.com/smathot/OpenSesame was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release/#{version}/opensesame_#{version}-py2.7-macos-2.dmg"
  appcast 'https://github.com/smathot/OpenSesame/releases.atom'
  name 'OpenSesame'
  homepage 'https://osdoc.cogsci.nl/'

  app 'opensesame.app'
end
