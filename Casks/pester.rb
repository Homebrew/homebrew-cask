cask 'pester' do
  version '1.1b21'
  sha256 'a1923d0b330f9e054c1c7215b35322508f03c29294660df9b73bebf6411be283'

  url "http://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'http://sabi.net/nriley/software/Pester/updates.xml',
          checkpoint: '80c01b621ac7672ce1866445703e2c11532f79b1c6120aa568b33af0bce9289e'
  name 'Pester'
  homepage 'http://sabi.net/nriley/software/index.html#pester'
  license :bsd

  app 'Pester.app'
end
