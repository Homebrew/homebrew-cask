cask 'firefox' do
  version '58.0.1'

  language 'cs' do
    sha256 '910cb23c82f3b2cbcafbadaae60b10de42c9a4f3cd512dafeb3d88b59fa9c5cb'
    'cs'
  end

  language 'de' do
    sha256 '0e6910273ff4bc432273f5a9bd58ec6fbac6aec165b4feb26e563afdb67673d3'
    'de'
  end

  language 'en-GB' do
    sha256 '152d9aea3b4196043ac6c592346a953f5c6e25d934ef001664e94fe792876be2'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a751f704979acf234b97d34d4678e399d5ce4926df185b3410ec1135b7cbb2b5'
    'en-US'
  end

  language 'es-AR' do
    sha256 'e9e977d00f9ee3fcf835481f6e1f13231829b5c6f050f3d7bce4c8bb6eb5e952'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'e12559c5f4306272d75d29fc6f15b5d1c63177b73dab90a7dcc761d55a931295'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '99c637bb7c5f55a4458ef95d4a42ea37db3d27b6ff600f31588f566f9ce48cab'
    'es-ES'
  end

  language 'fi' do
    sha256 '02ff3f9928e31ad44adfd36f58718b59b3977274727adc7563cd99d233d6534a'
    'fi'
  end

  language 'fr' do
    sha256 '7a240491aaccae3e61f92c1793052aaf931f5b4b42b7eb98f43ebd76f4a067c9'
    'fr'
  end

  language 'gl' do
    sha256 'c7ff48bd5d027f65a4f7fd14d2b558d3f25834136ee31b143d9ba678082cf82c'
    'gl'
  end

  language 'in' do
    sha256 '1c2031e5a9f3a229201202f70ab45a640a5a480ec275bf776086b4288c864928'
    'hi-IN'
  end

  language 'it' do
    sha256 '1dc7a3b0727fb33916458f3c0f0372b7d7d6fb6742e4386333c9dc85fa829ec8'
    'it'
  end

  language 'ja' do
    sha256 '3fbd542576479987c20c88127023282cf3c8711f476bf0adb1a4df0976c5c3e2'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '4f2b780fb8bc2f32db6455c8d9236c1f66e18fa781ff126923d8b34ef6f644f9'
    'ko'
  end

  language 'nl' do
    sha256 '061db40aa83a5af8b0aebd40063d202c3bbd78a46dfea99bf807d07ff02e5ec3'
    'nl'
  end

  language 'pl' do
    sha256 '891d132042fc4ed9daa671e08cf2a74bdec28db60d98d43704c1200ba09ab593'
    'pl'
  end

  language 'pt' do
    sha256 'a0df4fea55ca961452080e892c473b24d21a0e838c8e897496358e0dfb11048a'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'ccf8882e09fe1c33f5ab5cbca0697d164281c5fb1a3baa9d84486ee9386d8755'
    'pt-BR'
  end

  language 'ru' do
    sha256 'ae1a1629687c908bce68d2f803e4e30d72629155cb3342866d9fd12f3c992624'
    'ru'
  end

  language 'tr' do
    sha256 'b111b686377d223e44c07f9cd3aefbaafc2fb7a29e231a12ee5ad3f696d14984'
    'tr'
  end

  language 'uk' do
    sha256 '3d1873677d7ab573dee593ecf2792d162e90ccec253a0d4882d33d129b7a9ce0'
    'uk'
  end

  language 'zh-TW' do
    sha256 'cff2c6a6d6ba1e9474004f4b80c0be1cbd8992bf1d945086ea38297b423058db'
    'zh-TW'
  end

  language 'zh' do
    sha256 'cd3f7d26b07fe3b53ca7675cb3f0c2d9994b82fa457ca367d71f074edee9ea92'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '2f7dbd8e9d0a2a6ac15681132b15fb503e5346eeae119f34b22807f38345eed2'
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
