cask 'firefox' do
  version '69.0'

  language 'cs' do
    sha256 'eac6e3b5a39060b453227d75ef19228c28bde9d09f6e8894bd8b6d6b4826fc94'
    'cs'
  end

  language 'de' do
    sha256 '97e33ee26b61c6e992921b375666ba8b5453996ab2ccf23c4ec169b1db7d783f'
    'de'
  end

  language 'en-GB' do
    sha256 '8d00c370fa8d8b0a569d3ac2ea74303188c2a67f3caf11f44de1b2d92b3a37b8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bfa9ae88ac188276c9ed17ff2e5f6e2440d6513710a32002d51be9b620d3e71c'
    'en-US'
  end

  language 'eo' do
    sha256 '5f869ebec631f755e925361e8b6e40f614a06c0ef01277472bae4f79838304cb'
    'eo'
  end

  language 'es-AR' do
    sha256 '310d83373a92831e502141df1af9ab03a4730b37344feb6a90e61baddf220f6a'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '77efdc0c1e6ef738bd620671c747aa09ab45453292aa65907306dafa36bde525'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1ab27451aade5537e4c2b3f46365ed30e5ea7b170538dbc6495789c8a9ca435e'
    'es-ES'
  end

  language 'fi' do
    sha256 '133f3e471d166b7f3357921b20eca7954fb49bbf788c878be6cf58b317789094'
    'fi'
  end

  language 'fr' do
    sha256 '70d01b62d6d46cf20dee335de2ffdd5b371b669e0a2e86e74dd9d28855f79247'
    'fr'
  end

  language 'gl' do
    sha256 '865a8f8f53fea643a60a2eabb1d8f0bf427eb603b35d978ac1c3842ffaa1d47c'
    'gl'
  end

  language 'in' do
    sha256 '7158dd6581a2aebdcecde0d699bf8b7070974e5b26e3db9877a54ff9ab03a04f'
    'hi-IN'
  end

  language 'it' do
    sha256 '358d4919f3b812f55717d6eb9a335ae814d25cbd899fdd22a6c89b4deb4f30db'
    'it'
  end

  language 'ja' do
    sha256 'a2c94a35d06a7a0981ebbfade37f848ce18434d4e1a5f641bfc6eb3796240098'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'fcf76fb24171d52cb676c6cc72ef1be71fcb2a67a3f76241e85730222fe67dc9'
    'ko'
  end

  language 'nl' do
    sha256 'ae93e28de65aa9666a1d1c225e5bc59803ca81a421d6f1ce8db1fe1fe069db52'
    'nl'
  end

  language 'pl' do
    sha256 '1a072f18ef25cc3cd5ae31d6ed878b53b7fd4e25b1b67551dd6d26840434e7e5'
    'pl'
  end

  language 'pt-BR' do
    sha256 'd0f38ce250baea884fd4d297674edc2d910c7802c535d00106f6722157da1c18'
    'pt-BR'
  end

  language 'pt' do
    sha256 '018d14cd0d817d37204c89efc7d2d8f900e9d32bc46919f9b905fe5481544572'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9882d7e3219f428c8b2731c826254e048db0e1029a5e1ffd08e0fbf153576d7f'
    'ru'
  end

  language 'tr' do
    sha256 '254840998b269061e6d1cfb19441dffb9cb6547e90a0f7f8dbf320afcdc27478'
    'tr'
  end

  language 'uk' do
    sha256 '65a0749b6244748d85ade403a11bd72b83b2e87275112df8cd4cad80461ba53c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6bc04421f180c28badebe10b8b658b967f83477ee2865f5bc25e99b4da4f7b32'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c63beb33b37d29a5f8cf3ac98c826d4ce8e56474158675d730be0c661c396a94'
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
