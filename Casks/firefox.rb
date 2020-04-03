cask 'firefox' do
  version '74.0.1'

  language 'cs' do
    sha256 'dc83a1515a29e03fd95b7dfa68f945fa0468bf8b028776bc36e83fc1d6eb2156'
    'cs'
  end

  language 'de' do
    sha256 '18bd27cdabb295198adab4fc8c22783cb74e318029c81506b51b7cbe922ff335'
    'de'
  end

  language 'en-GB' do
    sha256 'abf9f8c379c5488c9aa8c7b08bf0a6b5f787af965d80457ea2b60d5442f0be56'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '92d8bbf491a62d3c1399e77fff6fbbb3549f8c8b789646b881e079810f94c845'
    'en-US'
  end

  language 'eo' do
    sha256 '83415eefd35993837b3416a8e5f18849f2c00de91c3e3a54aca0d5a553bc3a69'
    'eo'
  end

  language 'es-AR' do
    sha256 '6e8da75cdd640a496a90e25b98f5afa6a93088cc629f3f9feaa7c10b70bb5257'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'ae0689871cf9cce6618afa64a47a1be13146ad11cb03091557b4d878fd8d4666'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'f45d1d6be11cc91d04f97273fe622fc0138e3603d656dc89da8a7b9037a5317a'
    'es-ES'
  end

  language 'fi' do
    sha256 'e089ef161061887bdb3e17ad195823b4fc102cda64dbd5eb62c3c3de12df3dff'
    'fi'
  end

  language 'fr' do
    sha256 'd7fcd36e0dacc6eeaa8eecf8fcbf5bfcbcec74d96453b30e5e272e65a5f81cf9'
    'fr'
  end

  language 'gl' do
    sha256 'f6781baafed07e0c565e0b661c7c41395e7cc03b89761aeffa524e3ddb879dcd'
    'gl'
  end

  language 'in' do
    sha256 'f378c1e108a239faa36c6a452cb129279f546a6a61a1665d88f3c8b021b639cc'
    'hi-IN'
  end

  language 'it' do
    sha256 '856be008ae8484328409bb7047ae6653cd6a2b6b4cefdb71301ee3d03318fc20'
    'it'
  end

  language 'ja' do
    sha256 'e868097e6155755c8bc2a80c9012eb94a08d3fdead7fd08bbe2aefc64056e8b5'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'e93f0f2fffd5833d1e8dbcb0a90a2c30bcfe093972e14f1955128e2719ebadd0'
    'ko'
  end

  language 'nl' do
    sha256 '437d1547573755f902ec4dd7c87c7de3569ef5d11f3c2776f49a5dd563cf2f37'
    'nl'
  end

  language 'pl' do
    sha256 '180e3fae1c1d8affc3e77213fca38b2f4a88210f8ba41eb845a477c4601596a7'
    'pl'
  end

  language 'pt-BR' do
    sha256 '62173351bb607d244dae4f27ec31269fba688636da1c02a40ef7f20a95e66671'
    'pt-BR'
  end

  language 'pt' do
    sha256 '1e756c3b821132c3760091d46eb9bc6a3818552393ee460a081c5e12d27ecb5e'
    'pt-PT'
  end

  language 'ru' do
    sha256 'db9ed9b368ed72439d73e66e1cb337a0828283cc5fe62b2a6017f958467fbeb0'
    'ru'
  end

  language 'tr' do
    sha256 '18340945be2e390fee6bed320711ffc80124eeebe7099484e1bbeb858cd7ab88'
    'tr'
  end

  language 'uk' do
    sha256 '34770436e0afa0842739c34fa62d81f18803adfad87d042622451ebe9033a3d1'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ffafc23618b75897fedbcca9ad824f79f1c0807938e3d45d93f9c57541d67062'
    'zh-TW'
  end

  language 'zh' do
    sha256 '23d9fadcfde8f8475141a3dd3c19471f87dee0a7fccd67741cf4b81d6c9e1438'
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
