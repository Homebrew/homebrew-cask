cask 'borgbackup' do
  version '1.1.10'
  sha256 'a9432478993d29f4e5c2523473ebe814ed583f03a19ee2ec7f7d371cd45c2d43'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
