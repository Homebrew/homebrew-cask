cask 'borgbackup' do
  version '1.1.12'
  sha256 'ebbb4a963cbfd727c906b041d8731fdd3e1ac5f0a574767cfc981e78639ff54a'

  # github.com/borgbackup/borg/ was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
