cask 'borgbackup' do
  version '1.1.7'
  sha256 '2d99f204ff2686009f11889775ed4067f542927c77bf86a1adaa474af9f8b4fe'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.io/en/stable/'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
