cask 'dosbox-x' do
  version '0.83.2,20200531151047'
  sha256 '2222d11eaed52a858f37b08209ba8ed0069ea7f901c2e4656afaa7a5c7d5b0ef'

  # github.com/joncampbell123/dosbox-x/ was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
