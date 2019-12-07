cask 'seamonkey' do
  version '2.49.5'

  language 'de' do
    sha256 '0659f9566934b407a603b25a7085f1e16014dfe89f316183e18212d87bab09e3'
    'de'
  end

  language 'en-GB' do
    sha256 '24cd1ce1e271d792bc0654a5a7b3e681d41682379f1d897bd04f048bc3db650f'
    'en-GB'
  end

  language 'en-US', default: true do
    sha256 'b46028af8258442aa82e5ff81a9e9678bb93b3374ece5b8a747de4dd5560b5d4'
    'en-US'
  end

  language 'fr' do
    sha256 '46e7eab0ff2c16081c26be7718c3dd90918d38e31c5222f0f0bb8d85cd10b328'
    'fr'
  end

  language 'it' do
    sha256 '7526c9ba63b306f69a7b47d6c08779f4e865f19ff2ed92c2508f454c39cacafc'
    'it'
  end

  language 'ru' do
    sha256 '48e7253db8ef62c78b88b9baaf1c6425b2097b1009aeec465a84951f358fd84b'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.dmg"
  appcast 'https://www.seamonkey-project.org/releases/'
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
