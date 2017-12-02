cask 'firefox' do
  version '57.0.1'

  language 'cs' do
    sha256 'de82241144df12b353ea9f28230fdaa4288b1deb0590543a5bb5455f5401fe30'
    'cs'
  end

  language 'de' do
    sha256 'f76e76359baf7cedb33fe585d4cd9b56d5c91c8235cde6e431ffb7a4ca3baa35'
    'de'
  end

  language 'en-GB' do
    sha256 '9b8d99c18c33ca9a9115fa150f4198abb501d06b8d7db5b1ebb0e5bfa2a9d333'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '88ba8a1d07434dd648881f134e1101cfb02f8d429be93f88b45c89385df0883c'
    'en-US'
  end

  language 'es-AR' do
    sha256 '7f17722c22ee9bf010b2596356feba2fc4bde4009b989ade24d76e97247f1b5b'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '22fc940caf074842f238a646c85b3d366ffc50062a8a22dc853fbf374bbf0d3b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e4c143a60a767c501f46ce5c69d83d9a2edca98ba0a475d369de49b5014211a1'
    'es-ES'
  end

  language 'fi' do
    sha256 '8ff4d82ec2131900101cf73a8f361762bec86775a90c86c5de7cf483274c5181'
    'fi'
  end

  language 'fr' do
    sha256 '161a0bd63485278255cc5a0061316f10d74aff445c5476e1bcb428db6ddc55b2'
    'fr'
  end

  language 'gl' do
    sha256 'd5dc44114d33be4ac60083f3ec7f3bf9348e09e0863644eefe8c0c521c327436'
    'gl'
  end

  language 'in' do
    sha256 '1f2e7535e67333e45e92a0126506a4e4b0ee734914d265cb2b4e86715ed4e22b'
    'hi-IN'
  end

  language 'it' do
    sha256 '1b9de5b91f34b16fc13ac78c3735788dcfdf6308a36d98cc930cc70865f3c4e1'
    'it'
  end

  language 'ja' do
    sha256 'b9eb214fa08c17727220a095fc3c7630f458e615c28529c0e6b3561f909b9075'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '573c413ec9504dceb8a8d40193318573163548b20e280769fc70d66f5bc63025'
    'ko'
  end

  language 'nl' do
    sha256 'f88830f2fa11e33ffd9346d0fe642210f478773a8d969f76327a624265f9325f'
    'nl'
  end

  language 'pl' do
    sha256 '98ba45b13704ce894dc755c38bfb776908f71201211d29f4d2b9bbc5e0b4013b'
    'pl'
  end

  language 'pt' do
    sha256 '43823292ebfc692dd1d1be43d67021ac985a10da8bc3a0529f6d624ee3c370dd'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'c0c9f23207e9a06a9b0f7fd636b4fb6f2c20527c2a04607ae1de153ed3b97633'
    'pt-BR'
  end

  language 'ru' do
    sha256 '47b7136ead08f4220ddaa923f9010bb15e5aa45d7ac631f850d4fb6c8a910c73'
    'ru'
  end

  language 'uk' do
    sha256 '5bf7c631f7e97baac5fad0318a907677d3ffba4d3701c00cef3407ffe461b923'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8bd579aa1ea5ed084fe3b752b18f28c4ce6dc75af16f61f78935d24f6c8bd9b1'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ccddad60cfb143eaeffaefa31129e6529b43adf2ed33e8cc860f51728bc03437'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '8d8929419020115a7bc4e9a36b6ad29701d0de94d34240d5daf4a34f6f8796f0'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

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
