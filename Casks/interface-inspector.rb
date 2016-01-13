cask 'interface-inspector' do
  version '2.2'
  sha256 '2c365cffa8987a4e6f86f9381798e0066cd1c971824602cdefefc06d4bc704fe'

  url "http://www.interface-inspector.com/download/Interface-Inspector-#{version}.zip"
  appcast 'http://www.interface-inspector.com/download/feed.xml',
          :checkpoint => 'b3cf0e5d794d18cd12937b0a6eb18f50d32f3e2438719a57172d16edf25dade3'
  name 'Interface Inspector'
  homepage 'http://www.interface-inspector.com/'
  license :closed

  app 'Interface Inspector.app'
end
