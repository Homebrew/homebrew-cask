cask 'firefox' do
  version '68.0'

  language 'cs' do
    sha256 '9276e2b05c2d89c4d3d64e8ae9900b9f538743b65d8b6f9a5d75a05cec2b7d0c'
    'cs'
  end

  language 'de' do
    sha256 'f59bf37601cc559920d9b05f6e19ae722f910505a83109025697acb63ea75dc1'
    'de'
  end

  language 'en-GB' do
    sha256 '55fcd5a0100b9bf604ab98b70d2b376dbd10e663a8b296bae581973942c3b73b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f5abf49daddd95e621c596670fa65d6add1b8815860ced3970c47c92ccc87fc5'
    'en-US'
  end

  language 'eo' do
    sha256 'c47353ebb3c6d09c97aa87317ac30d596ed4ae20a77d1139b1283dbee7ed568a'
    'eo'
  end

  language 'es-AR' do
    sha256 '6aa421146bb391b6c495bac54b5dd37f616d23b2d60d69138aed477436b4d050'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '18792dc11274364e45143e12115a7020dbfc7fd4b77038679af5e387761c3176'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1749e2a34cc801146f9a2512084214a5bfc59486ff2bf4ef7b125d88c7e397b9'
    'es-ES'
  end

  language 'fi' do
    sha256 'c66635f93c0d9a6e58e64d0b2525ee809d8dc2517d080794a9d5e7fd24befb81'
    'fi'
  end

  language 'fr' do
    sha256 'fc4df7684aa74b30d3bc22dd451fd30b4a083178a667fd52b2ddd82cc8467c75'
    'fr'
  end

  language 'gl' do
    sha256 '6d743ad0feca23e08d70ead662147e0bcdc3579a159467dd8a20681783232e8c'
    'gl'
  end

  language 'in' do
    sha256 'f0c73e1c46e6cc2df980864b8a1ed186b7e0623fc9c50dce71a44eefb627abab'
    'hi-IN'
  end

  language 'it' do
    sha256 '6b490a8a1ed1e7de30c88a5fa06602924ed813397dd2c456771f6ac30fbd2678'
    'it'
  end

  language 'ja' do
    sha256 'eac107c96b0dcc2b46a3615db034d29b8cd4f685a58f6fef6fcc6080788f0e7f'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'cddcd0f51ac44dbec71255635f8b33968c7fd338ecc6209abe96bb5383c3af8c'
    'ko'
  end

  language 'nl' do
    sha256 '6d4f5c4ff76d34560dee50301083b5f120fec8bef1f75264945bd29fc4975ed9'
    'nl'
  end

  language 'pl' do
    sha256 '91529c9a2f492cc3e119a45dacce088955b5e2a477515ae1182b464e77ad54a7'
    'pl'
  end

  language 'pt-BR' do
    sha256 '62029a8a932183b9ec9378977b00a904b64ee0f51ec48e5d0254c85b4f613b1f'
    'pt-BR'
  end

  language 'pt' do
    sha256 '22c31b4047bed64a2f629f71a93ca628bce25018471e6067e1ad0e16e5128a60'
    'pt-PT'
  end

  language 'ru' do
    sha256 'a8cca6cc999de30952be1ca05968eb0f253451aae3b8ab6b237ad5892299c3cc'
    'ru'
  end

  language 'tr' do
    sha256 'acbf1c3289ac5f5afebab468ab4462882017dc92f24e4926895f2ffca527a482'
    'tr'
  end

  language 'uk' do
    sha256 'd127dc2f9786320db2224f2fa4ec7c065c7a3fe128ac20ee97b64baae4c34897'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0fdfc76c16b822e1836a8eb7e649a39258e33e5af473aabd62c8fb0b90b1f4e9'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0bbd2db3e8fd8d096c6114447642858478c568cb48f642866fd0b1253efab800'
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
