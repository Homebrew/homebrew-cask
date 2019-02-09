cask 'dosbox-x-app' do
  version '0.82.14,20190101022247'
  sha256 '13767ab3ae0599a4f166dc7c7a4c076f832f760e9a691eb0c3e5523fdcfdb461'

  # github.com/joncampbell123/dosbox-x was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast 'https://github.com/joncampbell123/dosbox-x/releases.atom'
  name 'DOSBox-X'
  homepage 'http://dosbox-x.com/'

  app 'dosbox-x/dosbox-x.app'
end
