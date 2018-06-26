cask 'firefox' do
  version '61.0'

  language 'cs' do
    sha256 '18bd63af8deb0c5c9e32151e07fe86db5c01e53f577dbc4f20e0d7ebcf184058'
    'cs'
  end

  language 'de' do
    sha256 '288bf10a959e88003b3b32373b50dcde2cafe2f464d53e54782b36473c53ff57'
    'de'
  end

  language 'en-GB' do
    sha256 '6c5fec733e7c9c0838f4b8c9e727d5acb1c5e29090a253b3980cc650eaaf2b8c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e1c3618c38c7f8dd0e9619afa1fff435f0f5a3515a7fc7e44bda1ec5d27d740e'
    'en-US'
  end

  language 'es-AR' do
    sha256 '79e5d8df5e6604f0866d2f4513d79d715126b72c3c7d635b2e136c00149015d9'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'c56433e4cf7fad0efe0eef419a28f11e86a03a36f99c169b877f4ca6cd728a54'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'f2128f47c76e30a4d51ef985dddc2e830bcc82fcc77840633cb62927b0f5b62a'
    'es-ES'
  end

  language 'fi' do
    sha256 'dca46cc3c5a34d445efb2096022fa1ac41a25148f1a5993f63720a90cff1f1d1'
    'fi'
  end

  language 'fr' do
    sha256 '5fcbc7b99c1bdb5e592f190301bff78e07466214aaa111913b3e15fa1ac9b21d'
    'fr'
  end

  language 'gl' do
    sha256 '914f6ada9dc0890fe384288e792b57308822fe58b16756e5bd0bddcf9bb4e761'
    'gl'
  end

  language 'in' do
    sha256 '17879bdfe7690b38ec0363b5a3a1401cd4eac49059f6f36aef1df5fb29ae8e54'
    'hi-IN'
  end

  language 'it' do
    sha256 '0e44f0ebc1341639afbb584949900c653340e8044fca6c0c1f9e293622f4493c'
    'it'
  end

  language 'ja' do
    sha256 '7c06e656d57e969c438bd5ef8316884fe209c9c5158c915b13f01f23c06d61db'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'da8be366a4bb1cb4711f3e6f31173cb5ad093b10599eda9c5fb1d0519756ef4b'
    'ko'
  end

  language 'nl' do
    sha256 'd0a485c8d3d68c40fa8afac47d7b5b32f4774e17703edc84885380316f72efeb'
    'nl'
  end

  language 'pl' do
    sha256 '7610b1357af560e75e1fec82114a2ff6244133f40a8a5be2a0aad0a021e0ce22'
    'pl'
  end

  language 'pt-BR' do
    sha256 'b9cc454d55b99e92514a89416af803bd843c9e4a31bec14e4cfe5429c436916b'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e669d7fc0a3151507898815cb9f7f1972169d61660703a15f7d906c6df2d38bb'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f7a81e46075d3fe3e5e82345305891c6cc658774cc98aa13a20ad88a2eb02377'
    'ru'
  end

  language 'tr' do
    sha256 '7d6bb36b3759fc7c3f1f568ef29203167f4d88cbab92105f626d8394e3e79159'
    'tr'
  end

  language 'uk' do
    sha256 'bd40fce1b087004df267e55d03ba8eb723a7556ce044c395c97a8d9a74065217'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a1cb9f9ed3fecd9daf723a180f6daa9ec2838a73b6129b35fa6c1947d104b28e'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2b836e5bc7e2b144655cb7038eb6f2dbdb2e6c8c53c9458b2f7c21b88c12ad02'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1"
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
