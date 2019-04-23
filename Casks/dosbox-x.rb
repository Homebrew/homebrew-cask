cask 'dosbox-x' do
  version '0.82.17,20190405211829'
  sha256 '23996d4eef7849db3958f74a72ad2e9a17e6777220d4439431787dd6bdbb38db'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'http://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
