cask 'itch' do
  version '23.4.0'
  sha256 'c20cc689fcc5bf97eb55a5f7f53c4ab11cb2a276bd0ee70803f9ae36736e33ac'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '69c016cf3ba40f8b3ebdc90bc38d05d7482d1591a597151784290b654e807ec4'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
