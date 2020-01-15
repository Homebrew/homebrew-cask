cask 'firefox' do
  version '72.0.1'

  language 'cs' do
    sha256 'f8bafd4ec80a76eac305cb581ed6cf25ae880ec131619b1c9a254d6910f8a109'
    'cs'
  end

  language 'de' do
    sha256 '7fc3188f0da34d6701088ce068bb1788ef93ad9668b466e984b25a5c93eb8d3c'
    'de'
  end

  language 'en-GB' do
    sha256 '5826156dc3dfe556968611da3b2e3ea52556a7993f4c2ea1a9ee48d3875fa6f8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cd148dfa42e647f2c1ecbdf32c071ee68bcd783ff1cfea08670f2907df9d4ed7'
    'en-US'
  end

  language 'eo' do
    sha256 '13ec64084c24ad399743e85b59fb9efb6382210ea79969f4525f81733a66e102'
    'eo'
  end

  language 'es-AR' do
    sha256 'c2e366982d0d31d8e01b84c4720bc19ceb90c5e651b13f96b7113d75dde03273'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '1f5afde3a0d8461325f27acfc0e41197203b5e47d9b66d58e76b8715dc246aa7'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '30906e1731560641e715469386bed929a69464833eee59d542932213b573dac7'
    'es-ES'
  end

  language 'fi' do
    sha256 '6d9d8c73c2073ed28ffa847aac8cf44e532f98ddfa62328be741018038f02f2f'
    'fi'
  end

  language 'fr' do
    sha256 '05cd29c20b2795ed14c88d646471a332da0ff9a2646789fc1195f4dd322341a8'
    'fr'
  end

  language 'gl' do
    sha256 'd13b9a742c6427ac84732b285885c7e187fa7e82cbb3a8d0dc20449e501d538c'
    'gl'
  end

  language 'in' do
    sha256 '6587d7a3158738bf28f856ab83ea2cc943179e94934ca10e0178f2980b5ac3bd'
    'hi-IN'
  end

  language 'it' do
    sha256 'fb13267e8977006d64a35bb46134f2f814347e825e712ad3cef043bae6bbde4e'
    'it'
  end

  language 'ja' do
    sha256 '99a50c9f2afe54deda0bb15ed7a8d9afa38db07a05fe86e7b4777fe5f275d578'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '9d45f4df532c9d70910d895508db22bc80e7e972f4ef45cd4e9b1a4b0dd27533'
    'ko'
  end

  language 'nl' do
    sha256 '445d6037d6b11d25df28d8fc03239c0693226e7160176097af2128ec64db959c'
    'nl'
  end

  language 'pl' do
    sha256 '2a5bcd8f2850d36ad80e4c953ae1191bdbb711226eda111b87d2346eb50f0f54'
    'pl'
  end

  language 'pt-BR' do
    sha256 '1016de45f5ba71c69da163b91c76eae9196224c63d658d83597078e6c540b35b'
    'pt-BR'
  end

  language 'pt' do
    sha256 '7585876412a27d9e3c77e1e9174cd512e6043c422e94c9f80b283d77006c21a9'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f5f6d9bac3e743e3df955233d096d152de58fef1e1d52c8028f719dc0e4c05c7'
    'ru'
  end

  language 'tr' do
    sha256 '279e2387cae812b2cbb4c4042dafffa85dfa48bd0dfcd6edaa08d17d18331458'
    'tr'
  end

  language 'uk' do
    sha256 '1b791c096363bfcc630e5431b28d653662025a6ea9cb03b12fd29d04ae6943f1'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd5dab66681ad12b43babb79f6f9961632813d4036287ab8b697effb36fa365d6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '840fb6b807420ada173362cc7de5e0983654158b36688aaabc709143f49fb748'
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
