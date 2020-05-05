cask 'firefox' do
  version '76.0'

  language 'cs' do
    sha256 '2beedffec79b7c701cd03d722de437b96af3abe9bf72a6aa0ee911892969445a'
    'cs'
  end

  language 'de' do
    sha256 'cf8af096d03a7c3b7e0cd3e2cf40dfb4899de29b6296a8cd042d029350173892'
    'de'
  end

  language 'en-GB' do
    sha256 '6dfe49037f67e96454b42915579cb0b67c3b4adcb80aae1b00a4286c90be65fe'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c71f44c038bc78cd9e310f367bcccb1e1dffdda2e3196491ffea1cd456e86b0d'
    'en-US'
  end

  language 'eo' do
    sha256 '1c237ba3e8cdee862ebf3a8a4e4a07cbd981cbfe8bc738670671f61276f57b52'
    'eo'
  end

  language 'es-AR' do
    sha256 'fc3ef3c2ddcad9b006029bd8e7b7695de3c5080cdd24c444f565ca123965875e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '133b64d7f3ed915a06e4ce5bd3d7d9230341dfd6983c25b4edbe9330441e9439'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '03e5fdbd2eac21e43fad69604a20ac6cbde86b214a5d0731109d976adc8133c8'
    'es-ES'
  end

  language 'fi' do
    sha256 'fb76ca24a7d7944eb63306d494976fcf02dd41fe3cd84fe66503fa92b092f699'
    'fi'
  end

  language 'fr' do
    sha256 '5e8f9c0c671e86d115ede1351b3553763644894f13a5a109c9b56634a6a42006'
    'fr'
  end

  language 'gl' do
    sha256 'a5935853812fb9673f344e4b4539c5ee3d10b96feed230494ba5085ba9d264af'
    'gl'
  end

  language 'in' do
    sha256 'c75598ad5cbb1fd373786ee830f748db633773eedcd5bb47cc1044d71c3abd21'
    'hi-IN'
  end

  language 'it' do
    sha256 '4df55e236762f5e42d189e6e7ebf434528a546ad388fa111bd3865381d34010d'
    'it'
  end

  language 'ja' do
    sha256 'fb07c442adfa9d36dd1c43c1cf7b60ddb2a9db281dc10d691a4acd76c352bcf3'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'cb6642452b1c4504df2f3a7ea2809c2ade407eb0f2abe15db5bb62a0e109034c'
    'ko'
  end

  language 'nl' do
    sha256 '66016542088aeda5b45cd8377772836bc6ae4367000d34f76945933a1fb1bab3'
    'nl'
  end

  language 'pl' do
    sha256 '6b571b594148fa3102b7409e0359d9a5f9d45bd3656a9cd2df1c08b476fa492e'
    'pl'
  end

  language 'pt-BR' do
    sha256 'c2e042014c878163792b93beedc4a80f75cc15c77a99c183c45c4bac2ec943ac'
    'pt-BR'
  end

  language 'pt' do
    sha256 '909672a859d4180c9e20b7845390e25f5e46381e1bfa35ed6cf198f4ad7d7419'
    'pt-PT'
  end

  language 'ru' do
    sha256 'df839c878ec0ed68b5c319c677adc15990ed1f5931edc871f7e441893a5ab252'
    'ru'
  end

  language 'tr' do
    sha256 'ab684957ad99661ae9352ab5bcc24d53e7c9f8c290b4c3a10a2ad76ef504f6d0'
    'tr'
  end

  language 'uk' do
    sha256 'fc9242cbb0b76c15658c3bea88f44e19176704a539345def70886f1aee0bb41a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'fffa110190f715de05947b08064ea8ce0e61b118702edeb7fd8c50dae05dd2ff'
    'zh-TW'
  end

  language 'zh' do
    sha256 '57e138a9586e5e7ce1490e0352bd4923ed44fe8b7ca4d7fdda633f6dc21cc1a9'
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
