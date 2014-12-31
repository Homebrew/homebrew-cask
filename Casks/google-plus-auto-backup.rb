cask :v1 => 'google-plus-auto-backup' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/edgedl/picasa/gpautobackup_setup.dmg'
  homepage 'http://picasa.google.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Google+ Auto Backup.app'
end
