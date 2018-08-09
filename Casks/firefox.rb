cask 'firefox' do
  version '61.0.2'

  language 'cs' do
    sha256 'a586ab104314f7cd6a7e467e6bce14aab28608930c6e447ed149d4c4c830f29b'
    'cs'
  end

  language 'de' do
    sha256 'a33a74928fcfb1194fd0ce134c5ad0fd4988fc522cb01494264c90d37b2c15dc'
    'de'
  end

  language 'en-GB' do
    sha256 '4f65bda71fec238d00879c90214a72085c91b8f9ffcc00b8a8be02ed1b2fec02'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bf23f659ae34832605dd0576affcca060d1077b7bf7395bc9874f62b84936dc5'
    'en-US'
  end

  language 'eo' do
    sha256 '1e112abfed513dfa048d9a2557131fb616ea226d748cd08eb382ed0fd49b1495'
    'eo'
  end

  language 'es-AR' do
    sha256 '5931b32e3d44f5eb1ad1b54b0746246195d27e94c8ac9d8ccabf384e1bf4e492'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '155e85b922afd88b65b7cf77c54e01737c5a63429176ade3c06334973bdbffdb'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e3afec97a8117eb7d51655c0aff2848234202e002b250f32a40dbdde2249fec0'
    'es-ES'
  end

  language 'fi' do
    sha256 '7939077602cf02d7891ec2eeae2217ee324fd21fb5bf47d1e875e0a3e4f3c307'
    'fi'
  end

  language 'fr' do
    sha256 'fd81eec8bb696364b5eb02e84ff5a070f6a2dacf94e8289563c9370c9fb35f10'
    'fr'
  end

  language 'gl' do
    sha256 'db61ca90cef1fb542c9ea9f656cc24ee742157088f26c023f7f396e967de4f1d'
    'gl'
  end

  language 'in' do
    sha256 '21020ead59230657315f65612e77612e0a4de546e30574badf870c3eb5823eb5'
    'hi-IN'
  end

  language 'it' do
    sha256 '80a88c1816e510ba486b76d4e649e6f9ab700dd4a86dc6f9bb74a3619052bc71'
    'it'
  end

  language 'ja' do
    sha256 '48fdf6d8fa6943904a854e1c2802a05689005acd18082ff0e631629beecf56ca'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '03e58ae93994d4b8d929234d33ccfe8b4847a5ea2e305418e5671a05243a4d7a'
    'ko'
  end

  language 'nl' do
    sha256 '97cf5dcca68f879e781a38b312cb75c22d5d90017053b1c0792adea62a0b427a'
    'nl'
  end

  language 'pl' do
    sha256 'cf10cf6947bca5a3ffeb0eb83d0edf93e16cb4159e5d0ac43aa536bdadc39d32'
    'pl'
  end

  language 'pt-BR' do
    sha256 'fd2cedcb8adaa55a224a2f43b91fa77e24f0a044d1652da7228b5e838314a978'
    'pt-BR'
  end

  language 'pt' do
    sha256 'a1202f76253eae15d00f978379ad5c0b15c546cee49a214723affe67fa1f062a'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7b841dfa53ff5818ae62927227612942a895721fca4e3010aa1f8e84e9767c5a'
    'ru'
  end

  language 'tr' do
    sha256 '200c0d32d86654f8c6374b20be9fa933567c6a786ab6ae1c1cfd0147ea65bb5b'
    'tr'
  end

  language 'uk' do
    sha256 'ae6094e8d217b1400f2ed3bb0ddbc38d25ca46024f12156191fb2874b728a61c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7fa499fc54163fbd2a33b8ab0b7fa17df84507a56ab830dd1073442049789b99'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e9ab76a0cbf0daeb701ac0505254d93d55e8a37b8303a3ec1acc4946d4c2ec82'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/en-US/firefox/releases/'
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
