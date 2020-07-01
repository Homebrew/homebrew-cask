cask 'dosbox-x' do
  version '0.83.3,20200630161244'
  sha256 'b22f19af8ea6286cdce973a2ebb02eca003e4dad9ab611118f279f11e6a561d4'

  # github.com/joncampbell123/dosbox-x/ was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
