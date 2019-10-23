cask 'firefox' do
  version '70.0'

  language 'cs' do
    sha256 '3cc67980a18c048e3c0fae4d4d76c80ff797a3bc7dd1f5f590cec53b040f5abd'
    'cs'
  end

  language 'de' do
    sha256 '5571d180a6b2e86799b9a70fa3cb7a1dd420db06bb0a178dd8667343662cb811'
    'de'
  end

  language 'en-GB' do
    sha256 'f87eae590d4b863903c5153bb72ecf50c1d81deb393ac46c0c2751ee17738f8a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2acb8fbc34a4eecfa8a9d0fe5e0b522a8a1b5dcd97fd52b38464e5a00524197c'
    'en-US'
  end

  language 'eo' do
    sha256 '9c42a7572eca896c516134566a62a6d8e1ac83067d345f8820d27746b855172c'
    'eo'
  end

  language 'es-AR' do
    sha256 '97b45f30c8eea07493eb44badf5176db183d9774d275ff4ba83192c51570eb1a'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '341a2d75e94c15a7df175e31e6992a119a6a6f71ed81404b663388302ff90101'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'dde670ad7e955436bcadd0b72bab98b60f2601c185041a64ebcc104c5be087f6'
    'es-ES'
  end

  language 'fi' do
    sha256 'dc670da336d262a8b3f1882e4403512301225030294ad08b496bafd7b0db37bf'
    'fi'
  end

  language 'fr' do
    sha256 '5c62953503375421db6613bda9152507175fd8ba23263498a7a444edc199eb46'
    'fr'
  end

  language 'gl' do
    sha256 '4ed4d85b119f64d30b20cf028464474624013a8bdc8e8419816e4bf6197ae944'
    'gl'
  end

  language 'in' do
    sha256 'a506fe5493a2dfb50a1d2efa656ad56a11c59a938bf9454da7a669f0dcdd80d7'
    'hi-IN'
  end

  language 'it' do
    sha256 '00cc55f79646d7d08f850678a211be9b03faf93a99c8074b68e6b1eada445674'
    'it'
  end

  language 'ja' do
    sha256 'db00ad9eeed9121090cc59f53726a0710f4464dd723387c98ef18fbfc93d37e6'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '8deec4510dd93444d75172ddffb59f5214d5364961ec9d66805ca62da13697bb'
    'ko'
  end

  language 'nl' do
    sha256 '3793fe319916ad62895ebc146ff3e53684c21567d49164e6cde19bd61d3d015f'
    'nl'
  end

  language 'pl' do
    sha256 'd05ef7930c5980a3fd276a38d0c4719585d1e78210825a1524fcedaa615519a7'
    'pl'
  end

  language 'pt-BR' do
    sha256 '6cb9bfae24f3bf65efaccfbaaec98063eedb8b61bf6fecc6d44721e27bbde57e'
    'pt-BR'
  end

  language 'pt' do
    sha256 '0a1caf07adc3d9dc035e0d35a5cdab5f070e236773c19400995b5a88eda20f3f'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c8c2d4391f1b02eb9b21abe8d0a7a6ecaf8b35a010ffd9cf80486fcbc47be666'
    'ru'
  end

  language 'tr' do
    sha256 '01088cbfe215da08da3c37942d258427e952779f83f7ba382d492dd6f190b04a'
    'tr'
  end

  language 'uk' do
    sha256 'e56ebf674f2b8dd5e27e57e4b54243de134eab96eb79856066d0740f0e1c3d4f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '54171218ae11ad98ccf82dcad46802f4870f3e16f216afb78bde62d1cfa8a6d6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '73ca58beb1dbbf8233a977d9a3111a08947a8ba9cf7082813f56ee6aac1b25c4'
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
