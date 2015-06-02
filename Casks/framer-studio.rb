cask :v1 => 'framer-studio' do
  version '1.11.188'
  sha256 'b1fff971456a4af5ad88661344dbad079d5ba08e25dfc2c6f252824d1916206b'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  name 'Framer Studio'
  appcast 'http://studio.update.framerjs.com/appcast.xml',
          :sha256 => '12f44dad224ade9de17cd52a5f12719e2d6512eafda790287a3a252c9e7ed6cc'
  homepage 'http://framerjs.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Framer Studio.app'
end
