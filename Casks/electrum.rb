cask 'electrum' do
  version '2.8.2'
  sha256 '1ebe0772fcfa1d04761d23174d1793009cf16b75b90034d8e384f9cc3fd29077'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '3f13cfabbecbd6b6804f125c966e40a8c2dc733a9e9e8e7530fc13cbedbdcbae'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
