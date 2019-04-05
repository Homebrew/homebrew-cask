cask 'firefox' do
  version '66.0.2'

  language 'cs' do
    sha256 '7a04bf2f563e708baf48a3c847d21bc697a1cfc3b27ef84cb54070492139ca69'
    'cs'
  end

  language 'de' do
    sha256 'c215d6ba0c98aa9bba6a45e1495c58d3e94b49cc280f14f22a5e35a9ff71d3d5'
    'de'
  end

  language 'en-GB' do
    sha256 'cac9c8cb2a53fa69742fac2d262c0ca9e5d5c4f62c6d355c8254f8a961f13f4c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'fd1f6a9816e2864c7e68c5840109cd190c7e1ea879f4f183dde4cab1a4393bde'
    'en-US'
  end

  language 'eo' do
    sha256 'f1c3498d9dff65d8f6c0d021f152def03c0b819faa8c8306aab361cb975807c9'
    'eo'
  end

  language 'es-AR' do
    sha256 '6d30d33c88cfd09254a9035aa62f1bdb6a8b1c9e46cb6abe214e95c93cdd53ca'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '3304cde33f3abc8eac1029c5a5250c0b16e85f67115b96f3eb43ed8551e7907b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'a7ad3cb4662a5e91f0821ebaac56d3a9f2aca26a02fd2e8c4bad6c0a7e63637a'
    'es-ES'
  end

  language 'fi' do
    sha256 '58d5baa1b6eed54560e06e4182671a629679948572a07eae67280792e0ea5b8f'
    'fi'
  end

  language 'fr' do
    sha256 'af2690842c594c50cd6e10b48fcaadf7887f99772b51019555aa83b42264ccb5'
    'fr'
  end

  language 'gl' do
    sha256 '58aaeefa4007a068dcb05db8581a8ad6b8967eb2251960b23d2982c28f95307a'
    'gl'
  end

  language 'in' do
    sha256 '753762320f739079e5c642facf80ab484f57ad8fb609ac71688bb3f01b345c66'
    'hi-IN'
  end

  language 'it' do
    sha256 '21ae125c8f6e168fab0c0536c8acf62479497890bdb7009d90db495277af0d12'
    'it'
  end

  language 'ja' do
    sha256 '43f3d87853eb98bd7e9579282c967657bb91603ebd8694d268345857fd4578a9'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '99c0fbfa9cb0953de53969fb3e5e8397c8b7565a0f0327c1b62b6e4639b28317'
    'ko'
  end

  language 'nl' do
    sha256 'd0300ba80a10cf5209cb8d6b32ac228e153af596c77240c24ba7693c57ca3b74'
    'nl'
  end

  language 'pl' do
    sha256 'a7ee00e73f6ba94e8289af8e206b17046996a35e40464c361586212dae99621c'
    'pl'
  end

  language 'pt-BR' do
    sha256 '63144d5932b61a8da495cefb7ee3065c18fefed6ab111fb14b4d5baa77027858'
    'pt-BR'
  end

  language 'pt' do
    sha256 '26f3167b9095159479795aaf7fab8db9e1c1321e06def22fedeedb1d2920fde4'
    'pt-PT'
  end

  language 'ru' do
    sha256 '36e9eaad99e0a5750e68ce4fca35fd920156a0660626da5b341894d46256285f'
    'ru'
  end

  language 'tr' do
    sha256 '98432ba2adb2ce923cc9244523cb8acc18b2526f1a95e9ac40ed7836f3969daf'
    'tr'
  end

  language 'uk' do
    sha256 '001abf35d9107bd3c1a795c1e055e151b93b1125fc9036b58d79b2391f7dada6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '68d673fb45ff09379f47aa1f4429f404e4128533d8cefe5c9777efa2acacaf5b'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b82ac7c15b5115b3661f7d5716a86fc9e706f08e8f6af932fb8287365b191203'
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
