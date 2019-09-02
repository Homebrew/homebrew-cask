cask 'dosbox-x' do
  version '0.82.20,20190731203557'
  sha256 'd38ba2408dbe4e32bf4c73f60cb016af496b69092885ac2a2beb0331046f8c82'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
