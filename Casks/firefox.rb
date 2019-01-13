cask 'firefox' do
  version '64.0.2'

  language 'cs' do
    sha256 'c21a6a36f102f2a28f6f1a3a42475b176fa0186eadf612f4ee2b3dacbb85b04f'
    'cs'
  end

  language 'de' do
    sha256 '3c47e836b0806a7dfd2f899eb121bee37b0fb7479fe93316f275972663413d0d'
    'de'
  end

  language 'en-GB' do
    sha256 '8797e7877d8b756de8b132372af05f875a4a1c7763c8423e28b666303e353b22'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f47ca31658832bb123da62d2dfb431ff8ff2af61469952295874100132e3d0b6'
    'en-US'
  end

  language 'eo' do
    sha256 '77b5e47e434e2879b53e2377092e733062287a95e23e73b7a40d7f381256fb5c'
    'eo'
  end

  language 'es-AR' do
    sha256 '11a2cf574de6f66c7e720b0b161da8d72bbb19744b6e81d45914e46fb68ff863'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '8c11e53f96c06b7db80a54fde838bff13c91a96b915e81a551637a78343ec020'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'ce7eb09c57115ec00fc7a9fc7b05be6c969a011304811dae8dda4e5133b57661'
    'es-ES'
  end

  language 'fi' do
    sha256 '0bb0996cd0e6c537cc1945940f629e06e520c89671e2e8344965d991904ef3a3'
    'fi'
  end

  language 'fr' do
    sha256 '061f6de5a4343cb60e8f9677001765e47bbfd8ae766a9b1d1b50c238e9380ae4'
    'fr'
  end

  language 'gl' do
    sha256 '7b00d7d63383f3f5a6bafd6d84e4a8219b60b365aacdd2bea635c907b172ab35'
    'gl'
  end

  language 'in' do
    sha256 '864261995c0177280b9a711d8e9640464f09f5a2a082afef9aa8542f40397fd4'
    'hi-IN'
  end

  language 'it' do
    sha256 '6db3e43541ecca196f735b2de077af09a6e500dd7822192ee4fc9056cc1a2fb8'
    'it'
  end

  language 'ja' do
    sha256 '9621a73747f56536886c22cc4fe0b6088859240f088d8f915b7975b07b389c04'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '449f872d31f0d07bf1e0e39047ffcf8cd1b6f4922ec6d3247faabe73efca90a2'
    'ko'
  end

  language 'nl' do
    sha256 '0ad13207e6d647f66428ac3a32ae0341d5833dcfb01ab579f042fa7a56b2b513'
    'nl'
  end

  language 'pl' do
    sha256 '672e7526aeedcc2e20efab55dfeee5364b71b53b8d6c17d6bb69102ec684997a'
    'pl'
  end

  language 'pt-BR' do
    sha256 '1730b735d782b64f1bb59307f1a8abd2799cca2a563748e0dd2ed328f964fe1e'
    'pt-BR'
  end

  language 'pt' do
    sha256 '5e309bc1a415e513a3157cbd008af0e97eb8de37d7454d55dadc70e340a49cba'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7ccccb4cc6ef5fa661ee8ac44f7bac511f5ec311cb2e0e77095930c36cfb8e04'
    'ru'
  end

  language 'tr' do
    sha256 '55f5c1165731be12a41ea13a8bda5c34a5a393a77dc9641d6a35b7acebb8fb1d'
    'tr'
  end

  language 'uk' do
    sha256 'd46f32042bf82ebc49c983eeab4d0bb5cb7a691abcbe924666b1eeaa3b0b495c'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c5e56272e2167249869ea5dd84c082f42aa6234362b4022d87f4e57db0e048f2'
    'zh-TW'
  end

  language 'zh' do
    sha256 '70e874d96f4b3dd8857be9f5bd4b947f0a2c8a968835336651dd9633239a8617'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/en-US/firefox/releases/'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true
  conflicts_with cask: [
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
