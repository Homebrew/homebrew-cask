cask 'jwzlyrics' do
  version '1.15'
  sha256 '515dac45a710739685a77fc09f70bf880a73a9cb635b099ea8e54b51c3dc2584'

  url "https://www.jwz.org/jwzlyrics/jwzlyrics-#{version}.zip"
  appcast 'https://www.jwz.org/jwzlyrics/updates.xml',
          checkpoint: '20f0e3e4b12b9ea8436de3d36fad445f44e7271af14416ea9b2a5a7b9d7b779f'
  name 'jwzlyrics'
  homepage 'https://www.jwz.org/jwzlyrics/'

  app 'jwzlyrics.app'
end
