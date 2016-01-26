cask 'editready' do
  version '1.3.8'
  sha256 '74eda021699b29c7922ed1ddfa61556e2433df271fce1c7bc619a69b99a0d5db'

  url "http://www.divergentmedia.com/filedownload/editready%20#{version}.dmg"
  name 'divergent media EditReady'
  homepage 'https://www.divergentmedia.com/editready'
  license :commercial

  app 'EditReady.app'

  zap delete: [
                '~/Library/Application Support/EditReady',
                '~/Library/Preferences/com.divergentmedia.EditReady.plist',
              ]
end
