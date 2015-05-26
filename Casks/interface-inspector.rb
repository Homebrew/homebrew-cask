cask :v1 => 'interface-inspector' do
  version :latest
  sha256 :no_check

  url 'http://www.interface-inspector.com/download/Interface-Inspector-Latest.zip'
  name 'Interface Inspector'
  appcast 'http://www.interface-inspector.com/download/feed.xml',
          :sha256 => '30e63af18a14bd79d283c035fabbbf26e429b81e91e74fe607d901a024ac9a6f'
  homepage 'http://www.interface-inspector.com/'
  license :closed

  app 'Interface Inspector.app'
end
