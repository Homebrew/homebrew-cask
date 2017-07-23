cask 'mgba' do
  version '0.6.0,2017-07-16'
  sha256 'e3d1444dcb3e5d53a1b7838c1ca293fe94ad8d2a29cb06dd017d108e63de6d78'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: 'fdbdbd3d27b6e98027f493599431b42069126013ffbfa9e74e1a73e2fe166fab'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
