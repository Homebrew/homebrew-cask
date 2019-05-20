cask 'firefox' do
  version '67.0'

  language 'cs' do
    sha256 'ba63dabfe0749651db5a4a8e5b633aab830cb8aefb80aa7b8336f4a64a8b3efd'
    'cs'
  end

  language 'de' do
    sha256 '01873b081f9130a654b5150cfdc1239392c6d05b68ee22f7eb43407dc07bc547'
    'de'
  end

  language 'en-GB' do
    sha256 '12e666a95c30f5d48b001dd8877af34da64c8f2776d4958d2425f5aa39b7ac16'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3fcf0db18898ae0beef97d0a3ae631afc9b6324b251ff575e78787c335ef8fe3'
    'en-US'
  end

  language 'eo' do
    sha256 '76f94d6b9e19a44508c0282575ed9b033cd0c8ea58bab208d3ecc02018edbfcd'
    'eo'
  end

  language 'es-AR' do
    sha256 '179cf1d7877c2c1a39494225f9ae336374f72d0feee156bfbd720cf59d823ce8'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '7f87272b5cea2b55c070d40de3c1816c56a7a2a75e56724d0594c91b3e0efb8e'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '58c383146d41a6f16a5802a6ee0dbe6002be378946a5a835645f62e45c5255f3'
    'es-ES'
  end

  language 'fi' do
    sha256 '0a7e93aec9f48e091f6eaf165761765bab6f6f465c492d80b01da6434ce19051'
    'fi'
  end

  language 'fr' do
    sha256 'dc26e5db415e72b4078b5abe64b9b007acca4a626b05043099ba273e41a50f62'
    'fr'
  end

  language 'gl' do
    sha256 '8b1a4cf106fd2957bf952c41d4eeaed4604249d3727e7a06f12c50122f653dcb'
    'gl'
  end

  language 'in' do
    sha256 'b2f822bbad958972b3e966f54571f799ac12fc75329c34ddee6cc03903d4cf8e'
    'hi-IN'
  end

  language 'it' do
    sha256 '9a64fc97db62e5e8118d8c89ed91e3ebfc40f0576dc879d7fc99a069e57155b8'
    'it'
  end

  language 'ja' do
    sha256 '9e24791b760df5c817f4fea961eff4303b2bbee19bfdcf1fd168e5b13e6a3320'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '53aeb82c45dd54549e6e3973ec8da679e7211c673bcd8b53146f1a25b7fe1f3a'
    'ko'
  end

  language 'nl' do
    sha256 'c61044f500a309ef0d7ea174adf617070f9bef9d378559fe1fd87f324742d001'
    'nl'
  end

  language 'pl' do
    sha256 '9e278274d16f68b3ffde878d82ce37d66ec4e409d17285addd6fe712e475c7e9'
    'pl'
  end

  language 'pt-BR' do
    sha256 'bc95ec4c867a9251b052312798e3ea93115f0ea6657d4baddaca8fd3247c3a27'
    'pt-BR'
  end

  language 'pt' do
    sha256 '2a41afe57051a3490f6b82476038afa7beb78e7df2fac948175d954cb2781179'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1372ef5ef6416fd1efd1ab5e7dd21e68215cc56be6e6639584b9c1d80b5ccb47'
    'ru'
  end

  language 'tr' do
    sha256 '1b23a393f72b4f5f2f8e55916da8bd2c62635f56b15ff39582d0594edff3d861'
    'tr'
  end

  language 'uk' do
    sha256 '2b8fef55060386a1a1e08cf749870df3b82ced7ed7213141c7c5f742c57b64ed'
    'uk'
  end

  language 'zh-TW' do
    sha256 '73779aae6db79c28215f41b564871860bff487a79de8311c3af765915ae9d687'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ada8ca242dcbaccc6263f441831c4e559b4cd64a675d67e38e13247f30a8839f'
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
