cask :v1 => 'google-plus-auto-backup' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/edgedl/picasa/gpautobackup_setup.dmg'
  homepage 'http://picasa.google.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Google+ Auto Backup.app'
end
