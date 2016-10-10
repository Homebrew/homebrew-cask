cask 'mgba' do
  version '0.5.0,2016-09-19'
  sha256 '60bb98a08fecac98af8c08c3e700da07fe4ef1f67b142007166b22cc07d7d780'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: 'd3bbdb391aea47fa0ec8badf2c0c640f3a611d58ab94e588cc9b98c798e95c4c'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
