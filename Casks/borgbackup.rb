cask 'borgbackup' do
  version '1.0.7'
  sha256 '4c3ac681e786f34f6de47efbf2dc0ecd2f0c615b6d8ff026639bf3317a4c5e5f'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '957ad43f7646cd0227b030bd67359cd7403131fbf16505408a2899143515f119'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  gpg "#{url}.asc",
      key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
