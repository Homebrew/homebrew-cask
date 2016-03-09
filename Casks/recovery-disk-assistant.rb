cask 'recovery-disk-assistant' do
  version '1.0'
  sha256 '4991086d733ceff060b1e2aedf7788c17be407db5f5a6bf6dde0c23f10db26c2'

  url 'https://support.apple.com/downloads/DL1433/en_US/RecoveryDiskAssistant.dmg'
  name 'Recovery Disk Assistant'
  homepage 'https://support.apple.com/kb/HT4848'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Recovery Disk Assistant.app'
end
