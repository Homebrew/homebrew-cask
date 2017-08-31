cask 'seamonkey' do
  version '2.48'

  language 'de' do
    sha256 'da2708b80251636955d802bb32de8a352a46df661337f23801fa3c0f847f40c5'
    'de'
  end

  language 'en-GB' do
    sha256 'db5ed7989a2cac2c560dd8d3b5e231499a2cefbf944626eaf44b44445d1f5d1f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '53431df9cd50cb6b7442fa5496f57b4b5bca0e5e005c058401f8ca958ad96428'
    'en-US'
  end

  language 'fr' do
    sha256 '2ca2ec22cc28676721813d147355c2c0e3b3f9c97bba9fe00ef31bc642ee254f'
    'fr'
  end

  language 'it' do
    sha256 '717a3f87c37bb76a712dfa81a6483ae17e179b9e5daf644585838ea03e961ee2'
    'it'
  end

  language 'ru' do
    sha256 '44f30154148f6ae7754ea849e0fd93fe305eb9cf6ffdd9a42b1b57cab4b0048c'
    'ru'
  end

  # mozilla.org/pub/seamonkey/releases was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
