cask 'caprine' do
  version '1.2.1'
  sha256 'e649c28f42076a676e7bef7770f2ac177385ba89ac708832c1fb25c14204c8b1'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'dedb6531c8bfef233a563042c088730d986fe41bd4725ddf56a142b815f380ca'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
