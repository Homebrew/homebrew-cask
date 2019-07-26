cask 'hyperbackupexplorer' do
  version '2.2.0-0131'
  sha256 'b42b28177227c4fb1f37a302bc1afccdcd97d1a6cc5aa21bba2c964758046f82'

  url "https://global.download.synology.com/download/Tools/HyperBackupExplorer/#{version}/Mac/x86_64/HyperBackupExplorer-#{version}-mac.zip"
  appcast 'https://archive.synology.com/download/Tools/HyperBackupExplorer/'
  name 'HyperBackupExplorer'
  homepage 'https://www.synology.com/en-us/dsm/feature/hyper_backup'

  app 'HyperBackupExplorer.app'
end
