cask 'duplicacy-web-edition' do
  version '1.2.0'
  sha256 '1f5da8d5e4fdf7cb5d184e697578f6fc3cc56c0d7a096ca9b3dbe332ce46dd66'

  # acrosync.com/duplicacy-web was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast 'https://duplicacy.com/download.html'
  name 'Duplicacy Web Edition'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy Web Edition.app'

  zap trash: '~/.duplicacy-web'
end
