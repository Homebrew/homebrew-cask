cask 'firefox' do
  version '72.0'

  language 'cs' do
    sha256 '6f40d52d2780207787983ed8e1cc7bffab76321bd998d7d74878b0bdbb13bf43'
    'cs'
  end

  language 'de' do
    sha256 '2c590a56dc46c17f9805cfc67fc6788ef8f4138496838bb184f66143a76c505d'
    'de'
  end

  language 'en-GB' do
    sha256 '400421556506e956cd37a473fed823db6c6450428dc28dba71ddea20e091b23d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '1ee98cd9364a279dbafe9073f3d2d8b181ac8c66999d00d390988ac3c25d3be8'
    'en-US'
  end

  language 'eo' do
    sha256 '1019bfb3712db1261843d349e92f75cf78fe65d34c0330896981cf9632c22943'
    'eo'
  end

  language 'es-AR' do
    sha256 'f856ba13ed296a9780528e886190a618727564a60a7f09d583d01049a11a3a90'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '6aeeebea3fbef648771ba071ffc204571d523692faaf1fab06dcab5cf93079dd'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1ff9a7947bcad86ef89195b90f807c4cfda0b1775f9be467c3d222e20a1f9038'
    'es-ES'
  end

  language 'fi' do
    sha256 '01f02773d067f5fa18acba00dc4a0f07258b33b738bfd20b25410935a2db0cf0'
    'fi'
  end

  language 'fr' do
    sha256 'e5cbe4a87749eea9f755c4645db483ee9146800c80bc76f93a349bbd7e3d9961'
    'fr'
  end

  language 'gl' do
    sha256 '562da612a7a83875e779cf9e8c0536766003f2618bd181e94aab034d3d0629a1'
    'gl'
  end

  language 'in' do
    sha256 '4e9c8bf43beef9f97543ebc37e5399d16d4a9d406c40d66b4bcba594a5d43b9b'
    'hi-IN'
  end

  language 'it' do
    sha256 'd3c1acde17761025e069be892f752f798552762d950c21d81a266c4331912dcf'
    'it'
  end

  language 'ja' do
    sha256 'c9cfcf6a67661adfa7fbab4736af15952b626b07faed003e05ead5c5a36df248'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'eb8d4c2596cd1f6011863e7967ccf3d4f16e89aeb18bc801744ff840ec4a3633'
    'ko'
  end

  language 'nl' do
    sha256 '6c11d1da8d09eb61ea1035cf19058c15fef9969260b15a447f2146ca558e0973'
    'nl'
  end

  language 'pl' do
    sha256 '8205e278f66226abd4e23618c480769f10439c074d5f1b5023b8bd90ba60ebd6'
    'pl'
  end

  language 'pt-BR' do
    sha256 '6c6e2334dc64be998c4bd3cb5e9f69df0e712ed04d2db1e613cb79b0f8d0e4a6'
    'pt-BR'
  end

  language 'pt' do
    sha256 'f7d244fb3b90b84f0ca7281c6eae916f172a9446975b605ec5e20e64a60848c4'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7e2c71483328d43379d68ac6f61c6c53f2650933c723ac3a4599bd00b9d99a40'
    'ru'
  end

  language 'tr' do
    sha256 'f7c93b028869207cd81177c76aeb41027bea641caf4cc3fa01f7b8e6fce1c6c5'
    'tr'
  end

  language 'uk' do
    sha256 '18489eae932076e6b607b52e01a1a4722585572e0b6f86753caa7a880c3725b5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '626f4c102fb117489bc6417c4652259aea417173cf94ef484bbd6acc603038bb'
    'zh-TW'
  end

  language 'zh' do
    sha256 '348cb1948c9512c4b4e464a3a73083a2f5b020473e7c7a47a0e611c7a96e6e88'
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
