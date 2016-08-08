cask 'buildasaur' do
  version '1.0.1'
  sha256 '058a2e2eabd1ca5967bb672ef6ac4de1951d0abd13ca815d83567a3d78e0aa1b'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: '3671911266ffa5bdc508f7307ab7c554127856ecc3cd63fb0731c5da914e4577'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
