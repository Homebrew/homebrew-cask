cask 'mgba' do
  version '0.6.2,2018-04-04'
  sha256 '0d52c37538d2ee9ac76f15bc9da072f217f3ce80ae7b2852ba515f407a48aa57'

  # github.com/mgba-emu/mgba was verified as official when first introduced to the cask
  url "https://github.com/mgba-emu/mgba/releases/download/#{version.before_comma}/mGBA-#{version.before_comma}-osx.tar.xz"
  appcast 'https://github.com/mgba-emu/mgba/releases.atom',
          checkpoint: 'ff4a4d29873933ef6722e27c89d19dee9712cd6a56783d2ce3e141ce6a96744d'
  name 'mGBA'
  homepage 'https://mgba.io/'

  app "mGBA-#{version.before_comma}-#{version.after_comma}-osx/mGBA.app"
end
