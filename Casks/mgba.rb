cask 'mgba' do
  version '0.6.1,2017-10-01'
  sha256 '25b8dd443d289559fa3bcecd22c47d3ef779f56907cf242074b6cb2b8fd61abf'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: '085dd90225ad230c171f0d5b35c672f70b712f46a118ab6bb81f3de5a42b6e58'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
