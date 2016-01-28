cask 'buildasaur' do
  version '0.8.0'
  sha256 'c8f16247d78a3c404d585082bfae829b2a8c59f88b21bd5c831638f9be5ea0fc'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: '29ab69a55849cc65744f71c471baf1f9ea61cc66041207b8a726810d49b653be'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
