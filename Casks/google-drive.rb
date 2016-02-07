cask 'google-drive' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/installgoogledrive.dmg'
  name 'Google Drive'
  homepage 'https://drive.google.com/'
  license :gratis

  app 'Google Drive.app'

  zap delete: [
                '~/Library/Application Support/Google/Drive',
                '~/Library/Preferences/com.google.GoogleDrive.plist',
              ]
end
