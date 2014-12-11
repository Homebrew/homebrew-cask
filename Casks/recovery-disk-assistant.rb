cask :v1 => 'recovery-disk-assistant' do
  version '1.0'
  sha256 '4991086d733ceff060b1e2aedf7788c17be407db5f5a6bf6dde0c23f10db26c2'

  url 'https://support.apple.com/downloads/DL1433/en_US/RecoveryDiskAssistant.dmg'
  homepage 'http://support.apple.com/kb/HT4848'
  license :unknown    # todo: improve this machine-generated value

  app 'Recovery Disk Assistant.app'
end
