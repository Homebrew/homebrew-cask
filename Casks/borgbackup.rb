cask 'borgbackup' do
  version '1.0.8'
  sha256 '9f74f984b362519c7fa8feb9662242bc8c6bf73175e2808e850ec662b62c8f30'

  # github.com/borgbackup/borg was verified as official when first introduced to the cask
  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  appcast 'https://github.com/borgbackup/borg/releases.atom',
          checkpoint: '02c302ab17b35ef5cc66613a4e27733afff139fec6eed769bd22258e70e58205'
  name 'BorgBackup'
  homepage 'https://borgbackup.readthedocs.org/en/stable/'
  gpg "#{url}.asc",
      key_id: '51F78E01'

  container type: :naked

  binary 'borg-macosx64', target: 'borg'
end
