cask 'savoir-faire-linux-ring' do
  version '201710201455'
  sha256 'df32a8cb54eca20fd2412521ba2b523afc27244941722676b0ff5397e090e305'

  url "https://dl.ring.cx/mac_osx/ring-#{version}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          checkpoint: 'ec50e30a44406e82ff3daacfd7704ec155db1479dac83b1980ecb60269d44a6c'
  name 'Savoir-faire LINUX Ring'
  name 'Ring'
  homepage 'https://ring.cx/'

  app 'Ring.app'
end
