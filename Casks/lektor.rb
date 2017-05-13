cask 'lektor' do
  version '2.3'
  sha256 '42b78c60a13fe2c58b238878b020677661cb410f753136a0a6b7f9165de49b31'

  # github.com/lektor/lektor was verified as official when first introduced to the cask
  url "https://github.com/lektor/lektor/releases/download/#{version}/Lektor-#{version}.dmg"
  appcast 'https://github.com/lektor/lektor/releases.atom',
          checkpoint: '5c3be26bd3bdd6849048dacfcf92fc6976e9e901325fbb6066c144e933e63648'
  name 'Lektor'
  homepage 'https://www.getlektor.com/'

  app 'Lektor.app'
end
