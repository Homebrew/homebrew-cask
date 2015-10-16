cask :v1 => 'google-photos-backup' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/picasa/gpautobackup_setup.dmg'
  name 'Google Photos Backup'
  homepage 'https://photos.google.com/'
  license :gratis
  tags :vendor => 'Google'

  app 'Google Photos Backup.app'

  depends_on :macos => '>= :lion'

  zap :delete => [
                  '~/Library/Application Support/Google/Google Photos Backup',
                  '~/Library/Caches/com.google.gpautobackup',
                  '~/Library/Preferences/com.google.gpautobackup.plist',
                 ],
      :rmdir  => '~/Library/Application Support/Google'
end
