cask 'buildasaur' do
  version '1.0.2'
  sha256 '3ba4da53922e607c9a6904ed53cc46fdde32191c88f5345e32de27238f9e7e4d'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: 'cb4496739009402c382e29ca9e336ea30b21008fba6a9b959a0c0b68387c2fc7'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
