cask 'seamonkey' do
  version '2.53.3'

  language 'de' do
    sha256 '2086d080f8207e6418fb52d1c0752eb239bba3facd68ea3260bea499d94d5355'
    'de'
  end

  language 'en-GB' do
    sha256 'a38e0346a513ee8f0c0c71b43e8e5c53119c6e1fc72601a9378b31db12ba875a'
    'en-GB'
  end

  language 'en-US', default: true do
    sha256 '216b69138357a359aeab5cf2d806f6f49d99aa8e710717afb909386bcd2ca355'
    'en-US'
  end

  language 'fr' do
    sha256 'dec785a60c3bf3aa6b8ef708fc4305a217ba9663fcbd838de2c1e8879f8cc06d'
    'fr'
  end

  language 'it' do
    sha256 '28af7cf0f1e1270eed97a0fa0d714cddc9e13689c9476790d0a085b8d7d18dd2'
    'it'
  end

  language 'ru' do
    sha256 '4de193ad80be27050867e272024162e23246010b961e24f48e542d25408b72a3'
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
