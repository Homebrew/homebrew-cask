cask 'interface-inspector' do
  version '2.2'
  sha256 '2c365cffa8987a4e6f86f9381798e0066cd1c971824602cdefefc06d4bc704fe'

  url "https://www.interface-inspector.com/download/Interface-Inspector-#{version}.zip"
  appcast 'https://www.interface-inspector.com/download/feed.xml',
          checkpoint: '5642874ee57e949e29925c92ebe3b6387bd5d162eec063c2e7e4c0e9d1d42752'
  name 'Interface Inspector'
  homepage 'https://www.interface-inspector.com/'

  app 'Interface Inspector.app'
end
