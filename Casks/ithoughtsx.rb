cask 'ithoughtsx' do
  version '5.9'

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/ithoughtsx/iThoughtsX_#{version.sub(%r{^(\d+)\.(\d+)$}, '\1_\2')}.zip"
  appcast "https://s3-eu-west-1.amazonaws.com/ithoughtsx/ithoughtsx.xml"
  name 'iThoughtsX'
  homepage 'https://www.toketaware.com/ithoughts-osx'

  auto_updates true

  app 'iThoughtsX.app'

end
