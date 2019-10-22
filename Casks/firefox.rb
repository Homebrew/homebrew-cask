cask 'firefox' do
  version '69.0.3'

  language 'cs' do
    sha256 '0f032ad807cfacbed488f54b5a4683ddeb85149d7c3491ebd35296c6492517ef'
    'cs'
  end

  language 'de' do
    sha256 'c782603e710b2169bd21c5986c0427a285a344b881be674ce6cdef4f32db1438'
    'de'
  end

  language 'en-GB' do
    sha256 'b9ca78f75a7854b937e87f737baf0ff437a7384c701513840fbfcdd62cec7e67'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6711c99b1a5aa3460f0cf1566dbd5625a4c6f96ea37c07821d79ffa94c21f20c'
    'en-US'
  end

  language 'eo' do
    sha256 'ec93165433aa29e55a03292c162236f11b13b8fce3130ca4efe7d8c013b74f97'
    'eo'
  end

  language 'es-AR' do
    sha256 '3c4f1b7e944d8a8c658de231e53f2797768a524a096a34c7b4e35c2545159f47'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'ec6b92cfa43bd66cec4d9216b3527d0c5bad62aff0de020221d5926fb5f39e55'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1b879fc97a43617aa89dcfa94f6bae5cae8c49e87f20e55b9df403b589ff279e'
    'es-ES'
  end

  language 'fi' do
    sha256 '4720529d17921db4c137f07370ec9dea3df6be8ca15c19ae183aa5d6f6b5c196'
    'fi'
  end

  language 'fr' do
    sha256 '8d918d4660a689395129608e73b85e3b8282e60e9bdbc77a19cc3c614a7169c2'
    'fr'
  end

  language 'gl' do
    sha256 'bd5972854defe5bffbcd548450ded1547046f7c3d7e7c4534f0ac0fb705dfdfb'
    'gl'
  end

  language 'in' do
    sha256 '103af092cefaf6fbb0ed0cae0db8363b1c0945f9f3f589a409809e1650589fe2'
    'hi-IN'
  end

  language 'it' do
    sha256 '49b794e8632e09576f4fd9acd833d68f548467a382883b2bea42472995cd971a'
    'it'
  end

  language 'ja' do
    sha256 'b4c9d004461242672be166c7121f28cf1a11c4f81a61690fda927f11a15221c0'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '3faf83fd63261107ab2d9270dd452a8e4a021345ed6548243ac1fb133a72899b'
    'ko'
  end

  language 'nl' do
    sha256 '02d1542b5d2ab0c39c80d44ea2cf64beb2d77d2ba00453b0f09c830134b62254'
    'nl'
  end

  language 'pl' do
    sha256 'f9e5ee762b5e930a9783ea73adbee20b087e824d29ef4ec79e6a9d5aa8afddfc'
    'pl'
  end

  language 'pt-BR' do
    sha256 '561ffab5c165bd146606a83beca68afa80ba3899ae8e1f28c614db925be4acf3'
    'pt-BR'
  end

  language 'pt' do
    sha256 'b6f6b6971bc3f5172fad984828b99a38f6898887540a00dbbf162d1d8276956e'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1b34795606e34d8d7db748814ac558a441d4bca4574705129f74e67a7ff26b83'
    'ru'
  end

  language 'tr' do
    sha256 '01383eddd5b6e9b1dea37fa9f4fb6516f2e94e4d90c630cde328a095d349782c'
    'tr'
  end

  language 'uk' do
    sha256 'b268c912d082401f0cbb652c283ac6663670e5e1f4928de7dfc612ac42516653'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1680277a5a720c699252ce3b3731cb364cc4af0400b906a5a7d8acad08d7e297'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6f153adc0419868545f1ee9ec0287bec0d43776de18ab6fdef8cb01870621587'
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
