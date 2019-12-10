cask 'duplicacy-web-edition' do
  version '1.1.0'
  sha256 '47297cccc35c64ec29093e1755bc93b89f4d1d940a339fc7903d0b55b67a13d1'

  # acrosync.com/duplicacy-web was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast 'https://duplicacy.com/download.html'
  name 'Duplicacy Web Edition'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy Web Edition.app'

  zap trash: '~/.duplicacy-web'
end
