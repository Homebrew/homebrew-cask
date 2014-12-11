cask :v1 => 'framer-studio' do
  version '1.9.39'
  sha256 '38fc750d8b1de5f86819c860a81624520af92d309faf9ddd1b784e2207bc0b0d'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  homepage 'http://framerjs.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Framer Studio.app'
end
