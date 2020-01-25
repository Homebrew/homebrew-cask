cask 'postman' do
  version '7.16.1'
  sha256 'c4ff0a0bbb907d8bdbb4d79b1b02850c8cb1c821434b21943bbd53ce099ac1eb'

  # dl.pstmn.io/download/version was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.pstmn.io/download/latest/osx'
  name 'Postman'
  homepage 'https://www.getpostman.com/'

  auto_updates true

  app 'Postman.app'

  zap trash: [
               '~/Library/Application Support/Postman',
               '~/Library/Application Support/com.postmanlabs.mac.ShipIt',
               '~/Library/Caches/Postman',
               '~/Library/Caches/com.postmanlabs.mac',
               '~/Library/Preferences/com.postmanlabs.mac.plist',
               '~/Library/Saved Application State/com.postmanlabs.mac.savedState',
             ]
end
