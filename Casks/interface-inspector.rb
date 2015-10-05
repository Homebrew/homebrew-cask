cask :v1 => 'interface-inspector' do
  version '2.2'
  sha256 '2c365cffa8987a4e6f86f9381798e0066cd1c971824602cdefefc06d4bc704fe'

  url "http://www.interface-inspector.com/download/Interface-Inspector-#{version}.zip"
  name 'Interface Inspector'
  appcast 'http://www.interface-inspector.com/download/feed.xml',
          :sha256 => '30e63af18a14bd79d283c035fabbbf26e429b81e91e74fe607d901a024ac9a6f'
  homepage 'http://www.interface-inspector.com/'
  license :closed

  app 'Interface Inspector.app'
end
