cask 'electrum' do
  version '3.0.2'
  sha256 'e40faa222a91c2813d9ccb190025ad4bd3a565c6aa9fe149c34962294544ebfb'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '494dae9cd3da494d5870df076a1605c85145452d900af0ff5f333a4aaf071576'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
