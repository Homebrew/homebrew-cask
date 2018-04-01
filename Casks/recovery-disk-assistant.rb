cask 'recovery-disk-assistant' do
  version :latest
  sha256 :no_check

  url 'https://support.apple.com/downloads/DL1433/en_US/RecoveryDiskAssistant.dmg'
  name 'Recovery Disk Assistant'
  homepage 'https://support.apple.com/HT202294'

  app 'Recovery Disk Assistant.app'
end
