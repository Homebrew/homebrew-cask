cask 'firefox' do
  version '57.0.4'

  language 'cs' do
    sha256 '65199521e641ced30fcee36b163ede1fb7923042a15f00f663a1009712da05a0'
    'cs'
  end

  language 'de' do
    sha256 '7286fb20d4a03d9e75b728b16d6d94e7c08145ca4f540fc167c54e7b57cd809a'
    'de'
  end

  language 'en-GB' do
    sha256 '48936096cc61352e5a9ce01295e325ee6ab270829cfabd3f58d68d0a695b0c9d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'eff6739bbb5f1ba425e52f1a4dc2c5aaf618f544ddca6a130ee6b46899b76b3f'
    'en-US'
  end

  language 'es-AR' do
    sha256 'c6dbed12b0a0d87b917a80641be8ab3a1c37cce8fb4bc19aace52ceb0e0c7a01'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'eee378677b95238c687fef607293f2bf9e2e2ce8f525ed37ea28d150107e2a96'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '11e1bccd2b694b6ef8cc23ac50eb26791ede05d710006faf92fd4e29683a279d'
    'es-ES'
  end

  language 'fi' do
    sha256 '9ccb83fffbaeef1f23bdd98f5aeda9c215b20f8541b5894b58ddbc0eed4c1a49'
    'fi'
  end

  language 'fr' do
    sha256 '048e8ff512a8bf0e6469649e6dedc6c055555bd9912055098035f78c64bb38b3'
    'fr'
  end

  language 'gl' do
    sha256 '7dfa1a4a28e3fbb9677764beaad3291c3177b42b7923b180c6a1e5f235f02a97'
    'gl'
  end

  language 'in' do
    sha256 '1afc5d5363031c044bedae28432d34030594b733f7cf1164f50ab3559c63a4ed'
    'hi-IN'
  end

  language 'it' do
    sha256 '17be0e2bbaf284cf1797d45f5a67e73ad3f7a6e3bbda4956eed7c328f3ffe590'
    'it'
  end

  language 'ja' do
    sha256 'df3807e7df049ad871402001c9d23aeab7eb404dce7fba2b27b74df8c69d297c'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'e7984bbaee03acf61285feda0b2c7ca81eff76f4303ecb0dcfc8937ec7f800f5'
    'ko'
  end

  language 'nl' do
    sha256 'd15efe473833db1ccdbedcc455bb782e361955be3d470622308ecba31ddee010'
    'nl'
  end

  language 'pl' do
    sha256 'e980ddb0f0997136d450d03f9908f45e1b2342524f44f9b69dee91599df6130e'
    'pl'
  end

  language 'pt' do
    sha256 'd0275f8602bf516e1bf55bb79e6afb0c370d042901e610c47a871dbe85186c96'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'ea884bd95d46416d07e29a0f6e5b54a0ab7bdd902ab26f41a227545f0798edb4'
    'pt-BR'
  end

  language 'ru' do
    sha256 '54276f6093873688d98fa88f90fac2bfcf593a0409749faa192c93128e3fbb4b'
    'ru'
  end

  language 'uk' do
    sha256 'cfc1c1e1c6fddfd577a92c2ad593434b5f7ef63d6666f7c20136a5423719346f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3f14be10147a050b551be5ee0d8f3de65a2f7518577ee4454e9b2575200b4271'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e8cf292d80b7a04322880fb07b6e2f9ef171a0ff7715a7ff500397bc78962f1d'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '9291db943d95e36b5ead371b780e8e35868a89874c8339ed6d21dc3ce1a54deb'
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
