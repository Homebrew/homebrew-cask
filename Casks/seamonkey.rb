cask 'seamonkey' do
  version '2.46'

  language 'de' do
    sha256 '683425c2b85e65a979cd812214ff040e6a043bd15a1d79416ad4d3f03ef7fe37'
    'de'
  end

  language 'en-GB' do
    sha256 '45c5de71e807d8f8f28a96f48c0c309d0fe740a6b3276d89733a5ffa12f5888c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '167ae1fa1cd84006d1c85991b983dc9c9d00463f45ac480a3d6d41436bcb6f59'
    'en-US'
  end

  language 'fr' do
    sha256 '297e1272f196f9ba3b2d61cabdd295a36575f9d5d6119b59652b2b2191ea6f54'
    'fr'
  end

  language 'it' do
    sha256 'a784bb5817626b1a69885ba39ee149ef6de7b9465d8fc29ea08cd239e454a2fd'
    'it'
  end

  language 'ru' do
    sha256 '52ef4becc913bddc64c04683d53b3e42a04ab78b3df7ca6263060fb9ddc9c4ca'
    'ru'
  end

  # mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/SeaMonkey%20#{version}.dmg"
  name 'SeaMonkey'
  homepage 'https://www.seamonkey-project.org/'

  auto_updates true

  app 'SeaMonkey.app'
end
