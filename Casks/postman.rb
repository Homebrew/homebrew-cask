cask 'postman' do
  version '7.6.0'
  sha256 'bbd2ae5f7927a2f352896b8e142e2e3f81d7f75e1b708705d8dc14195e40cbe6'

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
