cask 'interface-inspector' do
  version '2.2'
  sha256 '2c365cffa8987a4e6f86f9381798e0066cd1c971824602cdefefc06d4bc704fe'

  url "http://www.interface-inspector.com/download/Interface-Inspector-#{version}.zip"
  appcast 'http://www.interface-inspector.com/download/feed.xml',
          checkpoint: 'bfb2eb4fb35aa4ce5db1124d7450af12915323d59b73161c9358e5c8f514d08e'
  name 'Interface Inspector'
  homepage 'http://www.interface-inspector.com/'
  license :closed

  app 'Interface Inspector.app'
end
