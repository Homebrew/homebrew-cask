cask 'feeder' do
  version '3.1.7'
  sha256 'faa9fd1e1d7e5d9757603acd2a1499d687a9c56610d8a11eb4f282667ed37e94'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: '36f5921f4b0fc6ad0eaaab882b63c2d6c5205a0f2e0327b2b7e88fc1852fc894'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
