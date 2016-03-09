cask 'ibackupbot' do
  version :latest
  sha256 :no_check

  url 'http://www.icopybot.com/iBackupBot-Setup.dmg'
  name 'iBackupBot'
  homepage 'http://www.icopybot.com/itunes-backup-manager.htm'
  license :closed

  app 'iBackupBot.app'
end
