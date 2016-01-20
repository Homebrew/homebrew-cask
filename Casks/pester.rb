cask 'pester' do
  version '1.1b20'
  sha256 'da6dc523e6c1df281ba99a947e30a55c8b2fbacb51110f67bd5a504edf53317e'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          checkpoint: '1c4278beca107b0a9be13abbbd1a2bb2b3c09c2e6e83f5465432aa3e55e1ad2c'
  name 'Pester'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :bsd

  app 'Pester.app'
end
