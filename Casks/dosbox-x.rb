cask 'dosbox-x' do
  version '0.82.26,20200131111201'
  sha256 'a4d7f9dce5d7c3d8ce2631d41a1e99c734f2b7bb0fa4cf296cc8e1c2667e63db'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'https://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
