cask 'electrum' do
  version '2.8.3'
  sha256 '9090baab30f1d1b1ecde62b8eb976a1e025b85c8c2849ea0467a34de0c255a68'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '6d8cc7c042551a1f0c037dad1eaf0666def3a81184078b2db109c1a0773b5958'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
