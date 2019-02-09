cask 'dosbox-x-app' do
  version '0.82.15,20190202110559'
  sha256 '4e1c55c4e6662eae54f7a6cf76209acdab68de9565e7f8d6c29c0bd36b3e6630'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'http://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
