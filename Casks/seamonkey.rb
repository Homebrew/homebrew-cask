cask 'seamonkey' do
  version '2.53.2'

  language 'de' do
    sha256 '06dd692e8debe3d8c64f34659f675ae207bf4f1d60b2a9810ab2a389d37c691f'
    'de'
  end

  language 'en-GB' do
    sha256 '46fdc10bc29f757bccd9cb3cf933490d06a59c63c2fbc572ca626d7bd25e00dd'
    'en-GB'
  end

  language 'en-US', default: true do
    sha256 '4ed0131465029c5e6403bf881fd7469f7f7d002b436703166275fa131cab073e'
    'en-US'
  end

  language 'fr' do
    sha256 '075f2fb8f3b2195c8475132054ac9a3d429b575349d6592b16943fedfed9ee68'
    'fr'
  end

  language 'it' do
    sha256 'b3fd64c5dfd7417a54415ce92c20b53ac98be784f263069c1f9d3ca654cc70b7'
    'it'
  end

  language 'ru' do
    sha256 '796867c304b411d07c9f0bf92a9f7330ae97ff830da461386855efc756def3f1'
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
