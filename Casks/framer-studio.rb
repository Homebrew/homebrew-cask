cask :v1 => 'framer-studio' do
  version '1.9.39'
  sha256 '38fc750d8b1de5f86819c860a81624520af92d309faf9ddd1b784e2207bc0b0d'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  name 'Framer Studio'
  appcast 'http://studio.update.framerjs.com/appcast.xml',
          :sha256 => '12f44dad224ade9de17cd52a5f12719e2d6512eafda790287a3a252c9e7ed6cc'
  homepage 'http://framerjs.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Framer Studio.app'
end
