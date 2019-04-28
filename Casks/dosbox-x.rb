cask 'dosbox-x' do
  version '0.82.18,20190427181609'
  sha256 'fae850fe9088fc47fe1a64398898a7f58a9c54f1e748fac4be0be4a718c9848a'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'http://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
