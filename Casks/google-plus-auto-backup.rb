cask :v1 => 'google-plus-auto-backup' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/edgedl/picasa/gpautobackup_setup.dmg'
  name 'Google+ Auto Backup'
  homepage 'https://picasa.google.com/'
  license :gratis
  tags :vendor => 'Google'

  app 'Google+ Auto Backup.app'
end
