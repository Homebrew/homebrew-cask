cask 'buildasaur' do
  version '0.8.0'
  sha256 'e96a86a6bbf5620a34b0583249bd8440759523a6681fccead76d134021ecec6a'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: '68f8ea95932ab7f9e8cdb3f5b86c3e1be94498560ea8b7de48955ba3a4e15fa3'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
