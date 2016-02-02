cask 'buildasaur' do
  version '0.8.0'
  sha256 'e96a86a6bbf5620a34b0583249bd8440759523a6681fccead76d134021ecec6a'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: 'c4d58f593577f48ef77686e7a779a023887b46f17c3667f4750c38e73ac476ea'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
