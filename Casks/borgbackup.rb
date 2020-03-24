cask 'borgbackup' do
  version '1.1.11'
  sha256 '2535effded4cbe6f0b3732af8b8e85447c0da0be4b50921d03bb971ce2b9da44'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
