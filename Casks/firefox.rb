cask 'firefox' do
  version '59.0'

  language 'cs' do
    sha256 '4d749b7e2fb0c1e8fe67c17763cf72a6ee5dfa65a4b074b29af9af1d20f36ed2'
    'cs'
  end

  language 'de' do
    sha256 'ad7a9513b00510187b4af5969615eb70c6ed7e5ce01f1bb425c0166b791b7e3a'
    'de'
  end

  language 'en-GB' do
    sha256 '9f0eba7fb032b02eb34cf55a82f6ff2f09b00175579a2a06733f67a3c28fb822'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '920442f2030a2f3093e7275bd54f2b17b3c1471fbbbf3836960aad91166f40ca'
    'en-US'
  end

  language 'es-AR' do
    sha256 'cfe07e12051e64d1a9093e51e74f7d18b1ab2af6b08da076b1afc8393207f05e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5fbcbd8c1b55e7b768ce5feb4c352f3b7f61ff3d997698e4f8d60e44cba34d02'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'ba46fabb3f51aef837c7c82d6611b4ef8e357db5f14e78a90c3a88b9237cbf5f'
    'es-ES'
  end

  language 'fi' do
    sha256 '5c6e66e513e3b34b2901defabaea343d2803005e16bf1359805e99744536f88c'
    'fi'
  end

  language 'fr' do
    sha256 '477fa6369de395144f12cd8dd20fc4b5d027445deb72ac723c9f55a7aa0e193b'
    'fr'
  end

  language 'gl' do
    sha256 '9e177bfc346e2b329209502e8e9be8d99b6ef79b8d9856a2e4f0ae5aaef7c00d'
    'gl'
  end

  language 'in' do
    sha256 '66bb30293f5ebd2580b49129683a48849371f5688657b378a29ad2e1fe635ea1'
    'hi-IN'
  end

  language 'it' do
    sha256 '52589b1e9fbd5cb043d1eb7e9e6c4940b534497b7e8d12e4bd1f2be1cc784d31'
    'it'
  end

  language 'ja' do
    sha256 '4d5158023166a4849c646d49865729f00d5cca7c466b526afb91ddb64327b71c'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '26e3a272b8c6722d4f9776ab7dfd984fc82cf3d1ccc5cbe32f333fbee14f2c3a'
    'ko'
  end

  language 'nl' do
    sha256 '2f71d4b7dc2736589e854a8d60826add49aa7f56f29fe37123e1dbccd2583931'
    'nl'
  end

  language 'pl' do
    sha256 'a4f505ea34de6ab98b1c93d41d6ca8a67db7d7c194537c482ac9947e5efc1e1f'
    'pl'
  end

  language 'pt' do
    sha256 '25e492cdba6a1c9807e12b3ff9209ece41630c28056863b75a9c6f61619d8a9f'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '310383d1087a2041df32c569775cc897f965d0f5ce790f7aa9db1f6f05649e7f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '9e929dc678c78b24c63a56ad534ac01ce1ae6d93ad1767b1e6c240b7fcc094ee'
    'ru'
  end

  language 'tr' do
    sha256 '4f5be57ab165305837da3c76bf1807db3324ef4f26324f8cc55a7e164f39453a'
    'tr'
  end

  language 'uk' do
    sha256 '18a79ac08b8850187c895d367e574094890e055645e14729ef246a8d069a3d2c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '352dd4f12028b5bc89678118c83b5c8336cb771421e28979e6e446ecdc70c215'
    'zh-TW'
  end

  language 'zh' do
    sha256 '4c4167550d4f810e437c04806194bac507518681435951dc4263b87a7e1a0cf3'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '60cd150ca4d3ad600a27df2b48de0b180695cc1ffa5a7303ec070dda56a45ef9'
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
