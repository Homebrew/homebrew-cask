cask 'mgba' do
  version '0.5.2,2016-12-31'
  sha256 'ee0a934f05dff34938026314ddf2c8a9cb6bf2a3765e49bc4e3b2e1ce476b791'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: '53679dc7990fb3512112228e27cf978e3e4b06700de52e484f0ee322f987d4cb'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
