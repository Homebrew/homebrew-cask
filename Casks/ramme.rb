cask 'ramme' do
  version '3.0.3'
  sha256 '051a4d23e5e3b58c9e6ac1879baa15a4ca1230b85c1b5f2051cd871324d3889d'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '575b457921467cfab492e4086c33d1b7d96a79180f921567139cf71ab1885a18'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
