cask 'firefox' do
  version '66.0.3'

  language 'cs' do
    sha256 '6442e316ffd508cba85f540a9b29122ddedf05f0c35abfa6e818a9541d84f0f5'
    'cs'
  end

  language 'de' do
    sha256 '4f9bf7767d909212707f6fcef4738fccfb3b2ca41ec3f38c90ec28708d3a33f4'
    'de'
  end

  language 'en-GB' do
    sha256 '854c9e72eb01adf130ae92d470ed5faa470295c8737c7cc193833880f0b333f3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bf131bb4fa80e46f0bce095e59e12516746bf4650d482c3d28d922892ff0d911'
    'en-US'
  end

  language 'eo' do
    sha256 '5a35f39a00064698687ed68b57db5e59d7f8626971b5613e7957bca953715c8f'
    'eo'
  end

  language 'es-AR' do
    sha256 '0df950587b2bac3da3ada29efae7b9da2b3791e5f4d5b6a0f3459edf2819ed38'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '93d935de4d102f6956749b121b70709650be46d61956f3ecc488886a6801659e'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '6fd0ace74bcd1a88bb30dc99f9abf0c45c67a326e8ff54dc96edd4153ce686bd'
    'es-ES'
  end

  language 'fi' do
    sha256 '8ceae2a23ee3ac79e5dbd837dddc66b17060e535d3856759cd144e679f094c04'
    'fi'
  end

  language 'fr' do
    sha256 '983927c21d50166aa6580389e5335993a80b3953ec4a04fbe0a174d3dfcd3c51'
    'fr'
  end

  language 'gl' do
    sha256 '8bff8cce30ca7972f5e0936d97544f3d319689e839430c8abcd205e83c9d7433'
    'gl'
  end

  language 'in' do
    sha256 '96f4b88cdbcdb54db478203b8db682c68343dbe6c42e5ad53ff2d3dc2e89593d'
    'hi-IN'
  end

  language 'it' do
    sha256 'e9d4c0a0019322fc231f9154822346434d98e02b8b7cc330b2ba1a8f21982005'
    'it'
  end

  language 'ja' do
    sha256 '459152b67916bf2a31515252cc9e22901998b9fce34e51a49d8a9ef95ee2a0e3'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'f86367153b54372ff79a6ff14fa06fe6164383d4699e93c82bd39ea4fe710a58'
    'ko'
  end

  language 'nl' do
    sha256 '9fc9ea5ae8341fcc1c4fc67667c5675c926dcf2650df5a2433e1602afc437373'
    'nl'
  end

  language 'pl' do
    sha256 'b445de517335f9ee9e555554d71811bac9413f2ea3c70570702c95dbb9334358'
    'pl'
  end

  language 'pt-BR' do
    sha256 'da138340c1660c6e552504c0b42ce47dd9981c6e4b9dd8622a629ff558d08aee'
    'pt-BR'
  end

  language 'pt' do
    sha256 '62ba71c5660966ae00c41836025147afb51f34e482383597f8d4041f11f4bf2b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '48c70501182f242530c45c7becf571a6515b4bc5616c4e1e8f5bd92e7d17a14d'
    'ru'
  end

  language 'tr' do
    sha256 '018a6f3bad1a4c3c08a0859e619ead502b9bb274d1a3c5138dc15a4b57cca70b'
    'tr'
  end

  language 'uk' do
    sha256 'b657297c2c740bfcca86ce0251ef2d615b35903af8a4b5ccb1002f136e3c4cf4'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0e88e3e17ef9f78473ecd1fc8b73136fe9e8deecf376d06668e021510adc616e'
    'zh-TW'
  end

  language 'zh' do
    sha256 'dc6888225a79f675ca9e01124303e1f54f6d63684c4da2ed3cfef90468170371'
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
