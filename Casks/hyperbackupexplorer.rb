cask 'hyperbackupexplorer' do
  version '2.2.1-0133'
  sha256 'b11ad0a60d3cbac84e9a39dff5b602591daa075c959c072e46e8f205aeac96ef'

  url "https://global.download.synology.com/download/Tools/HyperBackupExplorer/#{version}/Mac/x86_64/HyperBackupExplorer-#{version}-mac.zip"
  appcast 'https://archive.synology.com/download/Tools/HyperBackupExplorer/'
  name 'HyperBackupExplorer'
  homepage 'https://www.synology.com/en-us/dsm/feature/hyper_backup'

  app 'HyperBackupExplorer.app'
end
