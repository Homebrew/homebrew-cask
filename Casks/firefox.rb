cask 'firefox' do
  version '60.0.2'

  language 'cs' do
    sha256 'd92ebcfaf3d4ee83fa751fc841d40c7dbb7608da60f16fcebe44fc90924a8691'
    'cs'
  end

  language 'de' do
    sha256 'c892ac02f430acc4f868820d638204f3e8dd5ac0a831536f7b5adf79ed49cec6'
    'de'
  end

  language 'en-GB' do
    sha256 '5bf7a7da30df668dbc9a619130319e3aebf0807bd0035a4c956fc138e5b60e93'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c229cf2135a1380dfcd1439c15ebb7a36df6b3055dc2e07da584404a6414d732'
    'en-US'
  end

  language 'es-AR' do
    sha256 '233a35377d17cbe21d8dba583903de91e9be5de0467932dde437acf5ebc51019'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '9da09191ae6c64d43afac2f327eeb212eaefc82680a4b64de85a2f91a786c88d'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'cdda88ac2798e8ffe53a77ffd2def4ec7486640f156ac4de213b815babe5fc98'
    'es-ES'
  end

  language 'fi' do
    sha256 '227ded7418d544f67916504c3f5d390f3e9f17075ac4d8ef9024e832bc2fdfc6'
    'fi'
  end

  language 'fr' do
    sha256 'a25c80c64e0073b81a8c06c263418cfebc07e57c18c81051a832ed75f0e62ef5'
    'fr'
  end

  language 'gl' do
    sha256 '394f3fff26794a6e4dd75c58b161a0b4fdc2d94958ea38d5689201245288f087'
    'gl'
  end

  language 'in' do
    sha256 'df642f59d0f76344de9562abd05eb672d5dbb8f8c5c9c42a2da5379305dd67d7'
    'hi-IN'
  end

  language 'it' do
    sha256 'f8a202d77162d960186c5ed9a2ee01d98d856dda583914629269a53963b1a605'
    'it'
  end

  language 'ja' do
    sha256 'e5b176c48acdfa0158cf36ad06c41c5d8528d1c89147c9052d0d72ff416c3f7f'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '333595c5020c25e8058a74e134c915ee629e7642e954a817f8a61af49511d24b'
    'ko'
  end

  language 'nl' do
    sha256 '38f849f2735cfebc9c06a30992f669e05e217b97a113b5feb84f531475daa67a'
    'nl'
  end

  language 'pl' do
    sha256 '942f435dc7fee1355df8cfad3a609a5a4fd2072f146a8e71fdea5da863efe35d'
    'pl'
  end

  language 'pt-BR' do
    sha256 '02be4aa79209dd4266cd9afe0decada2c3d2b00f32ed2e16384ce0c39b904802'
    'pt-BR'
  end

  language 'pt' do
    sha256 '373719bde17a873c30f9fdfb35e0817fcb205113044e657b5bd66f2e4ff97d87'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6211c0c8c1611d1d6138363ff91b6c96a2f973c378f03544b6d52d894c0d721f'
    'ru'
  end

  language 'tr' do
    sha256 '60146eb5d408faf7d78cc7808324724df548b7feab9da4a0e5c599af53e47f53'
    'tr'
  end

  language 'uk' do
    sha256 'bf4aaa2f5fa37ad86f9500f28be8c4f7619457b576ebf08f9627095dde980eff'
    'uk'
  end

  language 'zh-TW' do
    sha256 '5be1b1d92fa68a11dd397f42b118d70fa5ac2ea85e5710ccae5c891f695c837c'
    'zh-TW'
  end

  language 'zh' do
    sha256 'cfe814aaf256a04901ab3d2df4b721f8557e7c03bda15fdedd00ca026aaca999'
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
  binary "#{appdir}/Firefox.app/Contents/MacOS/firefox"

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
