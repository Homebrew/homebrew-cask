cask 'firefox' do
  version '69.0.1'

  language 'cs' do
    sha256 'a10b46da751ca37ee557f3ad706aec06fadd67d46cd150eb9bdcc4e2542f3ecb'
    'cs'
  end

  language 'de' do
    sha256 '871404c5433d9cf2d7207c3fb3798aef931beeb999f83224aa7fe9fbe8fc4537'
    'de'
  end

  language 'en-GB' do
    sha256 '0f1fd465500a01f691e5b299a3e06bc530f9341f0ea2f57cf85ff47e02feedc5'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd057ef3bcd4a2aff034eaa7a6fdd43439e33721649240669515bcd47df2bff9f'
    'en-US'
  end

  language 'eo' do
    sha256 'f5d4844f8bd1ae15917637fba8b16f4f8862a9636476ad07d5a7b93000a3fce3'
    'eo'
  end

  language 'es-AR' do
    sha256 'ce348b7d189849a6d066acb6357950802dafe3143c496245a92831b21c6b0df5'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'e59a4ed9f710b0c498ab938b9679b7c08c977f0918c3ad854d9fd5a4da05a53a'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1a729bbb9e36122d6f3521fe8acf95c3b904082038c24393ac7848251565bd8e'
    'es-ES'
  end

  language 'fi' do
    sha256 '265d565ec7f48249b1eeb3dee742d4610a62d8a780d6e5334389d17c0908da41'
    'fi'
  end

  language 'fr' do
    sha256 '95d06da8711c605dbc7d4b921aca72bf658a93e17f5b8ccafb53f7069d355bad'
    'fr'
  end

  language 'gl' do
    sha256 '56b03fae7576e83f1113b20c484c9b0d76531a69fe855dcfbff0b3f80b0867fc'
    'gl'
  end

  language 'in' do
    sha256 '4f1f7687c959d6b149f83288f5e0f2c24d176bc209974806c03ae475137f64a8'
    'hi-IN'
  end

  language 'it' do
    sha256 'd0f38289862ad34156570502e247ee49349406ff5b9fae6e7485b249e10ace58'
    'it'
  end

  language 'ja' do
    sha256 'c836673b8633063112b700d50163025e4decf584a6f6df34cfc9ddf8e9937bba'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '7063b8ff3d1c43ccd1ee04e4a690ac9f4c00fa25a4591eec8da02be82ac2f480'
    'ko'
  end

  language 'nl' do
    sha256 'd69ac92fdb4560b320a621cb03f80a6f65dbc797af750bbad21078cbb0ee05be'
    'nl'
  end

  language 'pl' do
    sha256 'e4de9224d8e9826342eb4779ca360c9496c8cf89da7d7613215a2dcad8692998'
    'pl'
  end

  language 'pt-BR' do
    sha256 'd21657a42c25d72a78efef2eae99d9ab30534bf001bda44e0c24fa35ce1c914b'
    'pt-BR'
  end

  language 'pt' do
    sha256 '72616f3c2c00153976a63370a99ceaa3c19aa9c17964053695974c690b5d74e2'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6c5a73d99a0670e3a6062eb9bcd8b5ef8bcf163b7742e70d30f0cfeabb110617'
    'ru'
  end

  language 'tr' do
    sha256 '53fa626bf2a9e2794283fa9f639d4a8cd6f8c7b8f35c9e840edcc2dd42e0b716'
    'tr'
  end

  language 'uk' do
    sha256 'e2c31e015789baf69abb0dc2d170902f3e6f2cffa744d3d77434bffc4a8369e8'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ef010a42421f034c8f782ffca36368b5760b4d9e6b65791f74f1210b8604a5e6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5c56554aba9000fecfe7cf18dc500d4f396ebbe64f3b4dd554533b71b9d9661d'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx'
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
