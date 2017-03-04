cask 'ramme' do
  version '3.0.3'
  sha256 '051a4d23e5e3b58c9e6ac1879baa15a4ca1230b85c1b5f2051cd871324d3889d'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '5d776a973b82369008f319d2cec1189c0114116abb62e54246174a62fc1ecb8c'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
