cask 'firefox' do
  version '78.0.2'

  language 'cs' do
    sha256 '3ce818085f70c9f345cd8513c8af3945c1797846741fab3a20c8e6df462850c3'
    'cs'
  end

  language 'de' do
    sha256 '762a53e3b7ff3a91ffc917b22948666efee31ca28b5bedb4819cc14b41d49309'
    'de'
  end

  language 'en-GB' do
    sha256 '294c244ccf1150f67a3f128db1b0a55bcc4a1b61443fe9e3c262b76cccb96548'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ca276b896e9adbb99b459ff71d65dbbeb7274436ba4a1733fa805f90f9a181ca'
    'en-US'
  end

  language 'eo' do
    sha256 'cc3507a7fd538d5f44803f49a24f8c6acb69c50d5ebe9a4472d52c4d15385f66'
    'eo'
  end

  language 'es-AR' do
    sha256 '6a58d20fe0c5033eb30808a3abcf4b14629255bd6d25d2b4db6b364e5b410692'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'cadb82e5b73ebf7483d17a313cd19cdfdaafdcf6e5e2bd48d42381dac3ea0ae6'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'b0896794ae95282946bbe9203083d24cbd2b40768dd5fe1291694dba3bf166a0'
    'es-ES'
  end

  language 'fi' do
    sha256 '18cc9f33a85c11ae96066d5ace76b34925ad7d0bc3bf5b1b609c37bb4d99be6a'
    'fi'
  end

  language 'fr' do
    sha256 '5badf0572c6a085fa34987af39cf29a06229adf58c8b37d80a6072288da3781a'
    'fr'
  end

  language 'gl' do
    sha256 '25ffdf52246a5a2b94ebb04f832f13a0ef331f92555bf3140747b4c7b00af67f'
    'gl'
  end

  language 'in' do
    sha256 '8690ca46c3796f601fd7c059950ce2d243ef66b8b7c7661f8d18b1f1a3276826'
    'hi-IN'
  end

  language 'it' do
    sha256 '54be0264c181a48ab560ab6198d33ec801c9cffa41a2d590a3d0a8795cdb0a97'
    'it'
  end

  language 'ja' do
    sha256 '60ce8b32c2c2df1914a1874428a2ff86aff4920de8aac404be7c282b0c477680'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '7956b1703b57b16d3444160d438ec67550795d02e6983539a3a08cd19e8a49f4'
    'ko'
  end

  language 'nl' do
    sha256 '68c57c9078a62ab77c6defb3b344f5b06c0ead15cef9b52d02d0d3fe2d74aa13'
    'nl'
  end

  language 'pl' do
    sha256 'f65369182e5492dc612988e02e3a6b047f03de86cef3eaa7b2dfb9120fb8bf5e'
    'pl'
  end

  language 'pt-BR' do
    sha256 '4ff91fd02b1b0db08216fcbaa0b57a46bf5809aa5dc74428676df610ff8fbb7a'
    'pt-BR'
  end

  language 'pt' do
    sha256 'b55d87d1eb9b1f959262d13c6a90d12fd58c6f4658399c22969f4d4f9beda71f'
    'pt-PT'
  end

  language 'ru' do
    sha256 '45c30594250b597e8f9ded70af8f9a0e4ca9596c2e24342f44838fbd9267f1db'
    'ru'
  end

  language 'tr' do
    sha256 'df88be61234b968f3c0ba5d3a0bd89b312cf999f8696477af1c3d610e043d451'
    'tr'
  end

  language 'uk' do
    sha256 '2862a85b38c375ae5c2150f52bdcda0ae63288deb3561d44a911ef337d65bc78'
    'uk'
  end

  language 'zh-TW' do
    sha256 '80f5b584a8bacbfdf4606d43b02d8d199a4237fe2b5938c0e465ee679f6d9d6f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f6319048566b9e0bf14c90d1ab737f3e0dbb69f302b633e60d8f66ee790d27dd'
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
