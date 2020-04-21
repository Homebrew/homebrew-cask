cask 'firefox' do
  version '75.0'

  language 'cs' do
    sha256 '063b5367060613bf4726d376f9996014d269b09fae465b8b9aabde21ff541ee2'
    'cs'
  end

  language 'de' do
    sha256 'c69ebbeef3deeac39807afd4e05d60dd148afe196351c0413cb34e45e33e66af'
    'de'
  end

  language 'en-GB' do
    sha256 '5e2796475aa80840eb7df56fadd221493ca5b73b87c71cb5ed510d14f2ec1286'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0c32745905ee818b635c785466c53c66220c9c0d3fc56dc6613456edb0da03ae'
    'en-US'
  end

  language 'eo' do
    sha256 '516c67f90565fc82e20476ad29ee1439cee33d9b8966412bd5f31478d921af3b'
    'eo'
  end

  language 'es-AR' do
    sha256 'e58107949a3cb35c9e8646a1a959cc59b49c6e6c0ffbd03a747901c701f69de8'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'a5933737972f6e51ad7e85c84795020ecfe8df748b54d9dc6b5030ab03e2d9f3'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'dcf0f5ad4913ccfd5621fa114ed426930d5a617554df37e93a9a3ca80b360b19'
    'es-ES'
  end

  language 'fi' do
    sha256 '59c6e3eecaddd0c83d7b5c7ca05fdf5a099eaf09331fc57e263777d735363a67'
    'fi'
  end

  language 'fr' do
    sha256 'fa831c96cbdc1e56e13d1a36a09df5b86b839a460df1be0350d4631122549197'
    'fr'
  end

  language 'gl' do
    sha256 '91a41860d55fa6176d35774fff31c81a8669e890136af51c2361338d47b984ce'
    'gl'
  end

  language 'in' do
    sha256 'f7d2b17ccf581a10d5ca2e5e43ede4e6e4bdc7e8cf71e1a2447baa6467d16b4b'
    'hi-IN'
  end

  language 'it' do
    sha256 '81b67d058150a756d5e800a1f80b08f5ca2ebc17f9acc75df3653ac95d28742d'
    'it'
  end

  language 'ja' do
    sha256 '8a9c485bea09941fc2bc4beef3654ce782782af3e26d8a085006b6e5e30fee17'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '7159fd852f5e92fb5068de146aadcbce35abbd2d44a992eaa4f8a20a54a2fc0b'
    'ko'
  end

  language 'nl' do
    sha256 '98c1b9d3606a88b15b1397c0653e1b0c871df7072b2b7d82d2d5cdf67696da7c'
    'nl'
  end

  language 'pl' do
    sha256 '0ee75524138337a72f36e657cc0c6124db2774dbf4904a477c30b396bc888d8a'
    'pl'
  end

  language 'pt-BR' do
    sha256 '8a9cf30410414e0794091e2ba74711cc64bf651c8ff35c3ca25376fa178a2ab7'
    'pt-BR'
  end

  language 'pt' do
    sha256 '527abff147b87199744ec7c3112655dc53d74e5fa9c8fc59f34f38935001f146'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f88184cce474f856f281a52cb488a5e59e1ccd4ee2e3e15907b1b76032633006'
    'ru'
  end

  language 'tr' do
    sha256 '83a2fa53f9563585754b443d7dd5d5f205b9b25bbd15fe47b2335d0424cbf5dc'
    'tr'
  end

  language 'uk' do
    sha256 'fecdc035b5299c390c0c3abfb9c9979a11f05c32370858126f69fec21c95c736'
    'uk'
  end

  language 'zh-TW' do
    sha256 '43c52ff29ab42bf8567ee3229de795a17351db28e4ee5172c8e8aa36721e2efa'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1d2615616bce670e1058745e785962d22f8feb3d104576e021259195eb8a62f9'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
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
