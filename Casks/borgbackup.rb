cask 'borgbackup' do
  version '1.1.13'
  sha256 '920aae63337f3e7b1c0ee65b614ea8568e0a75547cb1812921202bdd3b9ba4d5'

  # github.com/borgbackup/borg/ was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
