cask 'seamonkey' do
  version '2.53.1'

  language 'de' do
    sha256 '7227a9b9a428ba18eaaede58841ca5ad082d60dd73151d84f465613594781e47'
    'de'
  end

  language 'en-GB' do
    sha256 '8d3b5c90d39d6ab5aa2079a6289d6cede27eb468d9bb97a2b5a7d85972d90124'
    'en-GB'
  end

  language 'en-US', default: true do
    sha256 'c4fab248ee30709b462a9c04ed8ca6e3443ae486c40210d2e521bedf050289bc'
    'en-US'
  end

  language 'fr' do
    sha256 '74cf24fca6550cb6c27bb33cc115549212ff055befbbf8b49a86f8341088affc'
    'fr'
  end

  language 'it' do
    sha256 '7a32c5b2e9da21beed987e6cd0a33801cdeab504582a5d0391006bd33eb2de97'
    'it'
  end

  language 'ru' do
    sha256 '7ff97c53c2cec5e08e32557cff36e603ba73ec9ac412cc5a7636685630cc464f'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases/ was verified as official when first introduced to the cask
  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  appcast 'https://www.seamonkey-project.org/releases/'
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
