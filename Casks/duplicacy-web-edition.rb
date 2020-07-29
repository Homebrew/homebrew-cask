cask 'duplicacy-web-edition' do
  version '1.3.1'
  sha256 'cf11fad6ef11c97a6c6450c3623d71e0bd7bdc49603ce66bc239cd33898d05a9'

  # acrosync.com/duplicacy-web/ was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast 'https://duplicacy.com/download.html'
  name 'Duplicacy Web Edition'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy Web Edition.app'

  zap trash: '~/.duplicacy-web'
end
