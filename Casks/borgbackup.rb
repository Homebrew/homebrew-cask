cask 'borgbackup' do
  version '1.1.8'
  sha256 '3f5681185de27a6cea6eed5ca8dfb312dd178df56d61040b42973a88a8dbf02d'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
