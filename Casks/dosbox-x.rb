cask 'dosbox-x' do
  version '0.82.19,20190531205412'
  sha256 'ba93f2f87e8aa92eaa2c6540d1f08e23cbd499cbc74d66d676c65a7cdaea773c'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'http://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
