cask 'firefox' do
  version '55.0.1'

  language 'cs' do
    sha256 '37c72356eef711c7fe86fb841cf6980d6362046624930d7d58aca03b8f693c76'
    'cs'
  end

  language 'de' do
    sha256 '7c3a8df2309bb1b2ed6dfe53ec7c266343d102305551642831a28887041171b0'
    'de'
  end

  language 'en-GB' do
    sha256 'a8c3aeda4847af689214b974a75abf033f4ee378ce0c249faa8c8158b1054fb6'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3e7e9f43cfdbb48d635607dd0f4c8a04f667d6885be68a15be5a0d4fbb0f9764'
    'en-US'
  end

  language 'es-AR' do
    sha256 '0e97c8ecfc04f5ea9a8c6029087e2e3c9fc645a0e40920c605071ef052f4b6b7'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '498d94acc2b256773890e96f5ee07fbd4ab099953b89fe25618da06802a2ad10'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '7214e6c646a0caa53ddd911963f9c0157fc0f9cf0e115519ee4b60c11a23f064'
    'es-ES'
  end

  language 'fi' do
    sha256 'd5ed4df87f05f4c69fdfe3e8d1c463e8168173dc41b4fb324d4b36ebc37301ec'
    'fi'
  end

  language 'fr' do
    sha256 'd699b0fd1d3a245b64d9a7c93295c21523a030a13a324c904dc2068b5ad42947'
    'fr'
  end

  language 'gl' do
    sha256 'f87b21c75f84527a267eab79df8bae85eb35a4157bcaa146f6e522a99e80d192'
    'gl'
  end

  language 'in' do
    sha256 '3e140af1e91dd6003981fae6fa69f7847c9fef839ce8e9f3a72af634f792627c'
    'hi-IN'
  end

  language 'it' do
    sha256 'ecf50beb87fd5d3664015f40f946df439d88e8c6e444c5fc54f613a39cfa5a09'
    'it'
  end

  language 'ja' do
    sha256 'ec4987cb957fe6d9bb916f74e9a095543f74fc354cb9c3c5e38e53a2bcd10e8f'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '49a7f400eff40d134066fac7250b8232f550f5dc2c07ab4d135fcd070ebfc1fa'
    'nl'
  end

  language 'pl' do
    sha256 '974b7fd93a56e04a9512e2f9bd86642f5e7aaa803175ca448b937dfe44043ab5'
    'pl'
  end

  language 'pt' do
    sha256 'deee4fab2d9ff57a25592bad09d2239da5bac025557a284f5f01ea2d10ef6134'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '3506bd3c219d872fcc0c6f19e55d1dcb6f468a0b4208882a4ddfc9a6dc71992d'
    'pt-BR'
  end

  language 'ru' do
    sha256 'a6d6b0d3672a8f090159adb16f5783a436214bd16ba2d8c744772b2397493a6a'
    'ru'
  end

  language 'uk' do
    sha256 '7801603209d848ef61ad35bca225772a6cfe1b2c79b4a075787ae14bee9669f1'
    'uk'
  end

  language 'zh-TW' do
    sha256 'def54eab0638885e5b6004bdecbad7779c65ae87a58ac48774f35b1ca4849d62'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ae51f3aea0e494db1af3edc3f065260fd7fab40b0b022359995b0914cf1ebd43'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '43ae1d42c868786225b5cb4365ccb577fcc8e1e0cfae1da4d75499935802cf98'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
