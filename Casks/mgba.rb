cask 'mgba' do
  version '0.5.1,2016-10-05'
  sha256 '6cb97fa813cd993afeb32cba542bc6dd9bc15fa5b3386692d257ef444f30d1c4'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: '2934c10a4f04b48941d67bda57114f96c3e24d9e9ba598004b960cb933912d9d'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
