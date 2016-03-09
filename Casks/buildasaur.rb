cask 'buildasaur' do
  version '0.8.0'
  sha256 'e96a86a6bbf5620a34b0583249bd8440759523a6681fccead76d134021ecec6a'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: '8e0d4dbc73c32ec7014caf4f915d5d525c484389d578e1a352709b23af4e1c94'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
